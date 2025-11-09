# Etapa 1: compilación
FROM rustlang/rust:nightly-bookworm AS builder

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Copiar archivos del proyecto
COPY Cargo.toml Cargo.lock ./
COPY src ./src

# Compilar en modo release
RUN cargo build --release

# Etapa 2: runtime
FROM debian:bookworm-slim

# Instalar dependencias mínimas para ejecutar binarios Rust
RUN apt-get update && apt-get install -y libssl-dev ca-certificates && rm -rf /var/lib/apt/lists/*

# Crear directorio de trabajo
WORKDIR /usr/local/bin

# Copiar binario compilado
COPY --from=builder /usr/src/app/target/release/backend /usr/local/bin/backend

# Exponer puerto 8000
EXPOSE 8000

# Comando de ejecución
CMD ["backend"]
