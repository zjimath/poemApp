use axum::{
    extract::State,
    response::Json,
    routing::get,
    Router,
};
use serde::Serialize;
use sqlx::{PgPool, FromRow};
use std::net::SocketAddr;
use tokio::net::TcpListener;
use tower_http::cors::{Any, CorsLayer};
use dotenvy::dotenv;

#[derive(Serialize, FromRow)]
struct Poem {
    id: i32,
    title: String,
    content: String,
    author: Option<String>,
}

async fn get_poems(State(pool): State<PgPool>) -> Json<Vec<Poem>> {
    let poems = sqlx::query_as::<_, Poem>
    (
        "SELECT id, title, content, author FROM poems"
    )
    .fetch_all(&pool)
    .await
    .unwrap_or_default();

    Json(poems)
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    dotenv().ok();

    let database_url = std::env::var("DATABASE_URL")?;
    println!("📦 DATABASE_URL = {}", database_url);
    let pool = PgPool::connect(&database_url).await?;

    let cors = CorsLayer::new().allow_origin(Any);

    let app = Router::new()
        .route("/poem", get(get_poems))
        .layer(cors)
        .with_state(pool);

    let addr = SocketAddr::from(([0, 0, 0, 0], 8000));
    let listener = TcpListener::bind(addr).await?;
    println!("Server Running in http://{}", addr);

    axum::serve(listener, app).await?;

    Ok(())
}


