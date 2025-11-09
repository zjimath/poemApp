--
-- PostgreSQL database dump
--

\restrict cN7mYdeTFMc45DErXTOEI9iujHbhJmehVjBgyU5LF83iIcHt3Cz6zMCQeTIdsaJ

-- Dumped from database version 17.6 (Debian 17.6-2.pgdg13+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-2.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: poems; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.poems (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    content text NOT NULL,
    author character varying(100),
    public_date timestamp without time zone DEFAULT now()
);


--
-- Name: poems_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.poems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: poems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.poems_id_seq OWNED BY public.poems.id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test (
    id integer NOT NULL,
    text text
);


--
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;


--
-- Name: poems id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poems ALTER COLUMN id SET DEFAULT nextval('public.poems_id_seq'::regclass);


--
-- Name: test id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- Data for Name: poems; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.poems (id, title, content, author, public_date) FROM stdin;
1	Te quiero	Yo te quiero como el mar quiere al río, como la noche quiere al día, como el sol a la luna, como la luz al día.	Mario Benedetti	2025-10-27 02:11:56.500754
2	Para Nayeli	Si te digo que te amo es porque realmente te amo, si te digo que te quiero es porque no puedo vivir sin ti.	Luis Borges	2025-10-27 02:12:15.412441
3	Piedra de Sol	Eres mi complemento perfecto, mi media naranja, mi otra mitad, eres la persona que siempre he buscado, el amor que siempre he anhelado.	Octavio Paz	2025-10-27 02:12:25.839178
4	Aveces	A veces me pregunto si vale la pena luchar por amor, pero después recuerdo tu rostro y estoy preparado para la guerra.	Wiz Khalifa	2025-10-27 02:32:39.766542
5	Tus ojitos 	En tus ojitos encuentro, un reflejo en mi necesidad, un portal hacia el universo, una forma de comprender que mi universo eres tú, sin ir más allá que tus ojos.	Zahid	2025-11-08 22:52:50.510751
6	Amor eterno	Podrá nublarse el sol eternamente;\npodrá secarse en un instante el mar;\npodrá romperse el eje de la tierra\ncomo un débil cristal.\n\n¡Todo sucederá! Podrá la muerte\ncubrirme con su fúnebre crespón;\npero jamás en mí podrá apagarse\nla llama de tu amor.	Gustavo Adolfo Bécquer	2025-11-08 22:52:50.510751
7	Casualidad 	Te encontré sin siquiera buscarte, pero eres la casualidad más bonita que tengo en vida.	\N	2025-11-08 22:52:50.510751
8	Mi todo 	Eres mi pasado más bonito, mi presente perfecto y mi futuro soñado. Tu amor no llena un vacío; crea un universo nuevo dentro de mí	\N	2025-11-08 22:52:50.510751
9	Dame la mano	Dame la mano y danzaremos; dame la mano y me amarás. Como una sola flor seremos, como una flor, y nada más...	Gabriela Mistral	2025-11-08 22:52:50.510751
10	Mi razón de existir 	Eres la luz que ilumina mi existir, la razón que da sentido a mi vida, eres mi destino, mi compañía, mi felicidad, mi todo, mi amor.	\N	2025-11-08 22:52:50.510751
11	La persona indicada 	Eres la indicada. y sí que eres tú porque no puedo dejar de pensar en ti... Quiero que sepas que te amo más allá de las palabras, más allá del tiempo y del espacio.	\N	2025-11-08 22:52:50.510751
12	Ven 	y siéntate conmigo a ver el viento. \n(...) Tú no te vas, porque mi amor te tiene.	Rafael Alberti	2025-11-08 22:52:50.510751
13	Eres mi norte	En tu latido encontré el rumbo,\ntu voz es brújula en mi noche.\nCamino y vuelvo a ti, siempre,\nporque en tus manos vive mi hogar.	Zahid 	2025-11-08 22:52:50.510751
14	Luz a media noche 	Cuando el mundo baja la voz, apareces tú —\nluz pequeña que incendia el silencio.\nSostienes mi temblor con ternura infinita;\ncon eso basta para ser eterno	\N	2025-11-08 22:52:50.510751
15	Mapa de tu piel 	He aprendido a leer tus líneas:\nríos suaves, islas de risa.\nCada surco es un paraíso secreto\ndonde siempre quiero naufragar.	\N	2025-11-08 22:52:50.510751
16	Pequeñas eternidades	Una taza de café, tu risa, mi mano:\nesas pequeñas eternidades me salvan.\nContigo cada instante se expande,\ny la vida se vuelve abundancia.	Zahid 	2025-11-08 22:52:50.510751
17	Quisiera	Quisiera detener las manos del reloj\ny hacerte día eterno entre mis dedos.\nNo hay prisa si te quedas conmigo;\nel tiempo se vuelve nuestro huésped.	\N	2025-11-08 22:52:50.510751
18	Vestigio de tus besos 	Llevas en la piel mapas de ternura;\nyo los sigo con hambre y calma.\nCada beso tuyo deja un vestigio,\nprueba dulce de que existes para mí.	Zahid 	2025-11-08 22:52:50.510751
19	La raíz 	Eres la raíz que me sostiene,\nsilenciosa, fuerte, sin alardes.\nAsí crezco: en lo simple, contigo,\nsin miedo a volar porque sé volver.	\N	2025-11-08 22:52:50.510751
20	Amor profundo 	No sé hacia donde vamos,\npero quiero estar contigo\nsiguiendo el mismo camino\nque importa si nos amamos.\n\nNo atañe si ese destino\nalcanzarlo se hace largo,\nsé que podré superarlo\njunto a ti, me lo imagino.\n\nEl futuro es nuestra meta,\nsi los dos la conquistamos,\nsi por nuestro amor luchamos\nla dicha será completa.\n\nLo cómplice y lo incondicional\nen los sueños aparece\nsi en la realidad se ofrece\ntomar­lo, será esencial.\n\nDesafiemos al mundo,\nqueriéndonos sin condiciones\npor ello y por mil razones,\nnuestro amor es tan profundo.	Classman	2025-11-08 22:52:50.510751
21	Y quiero que seas feliz	Si te quiero es porque sí\nNo necesito una razón\nPorque tu amor me basta\nY me llena de dicha\nCuando te veo sonríe\nMi corazón se alegra\nY no puedo evitar\nQue te quiera más y más\nTe quiero mi amor\nPorque eres todo para mí\nSin ti no soy nada\nY quiero estar contigo\nSiempre a tu lado\nPorque te quiero mucho\nMi vida es tuya\nY quiero que seas feliz	Ernesto Vera	2025-11-08 22:52:50.510751
22	Llénate de mí 	Llénate de mí.\nAnsíame, agótame, viérteme, sacrifícame.\nPídeme. Recógeme, contiéneme, ocúltame.\nQuiero ser de alguien, quiero ser tuyo, es tu hora,\nsoy el que pasó saltando sobre las cosas,\nel fugante, el doliente.\nPero siento tu hora,\nla hora de que mi vida gotee sobre tu alma,\nla hora de las ternuras que no derramé nunca,\nla hora de los silencios que no tienen palabras,\ntu hora, alba de sangre que me nutrió de angustias,\ntu hora, medianoche que me fue solitaria.	\N	2025-11-08 22:52:50.510751
23	Acuérdate de mí	Llora en silencio mi alma solitaria, excepto cuando está mi corazón unido al tuyo en celestial alianza de mutuo suspirar y mutuo amor. Es la llama de mi alma cual lumbrera, que brilla en el recinto sepulcral: casi extinta, invisible, pero eterna… ni la muerte la puede aniquilar. ¡Acuérdate de mí!… Cerca a mi tumba no pases, no, sin darme una oración; para mi alma no habrá mayor tortura que el saber que olvidaste mi dolor. Oye mi última voz. No es un delito rogar por los que fueron. Yo jamás te pedí nada: al expirar te exijo que vengas a mi tumba a sollozar.	Lord Byron	2025-11-08 22:52:50.510751
24	My kind of woman	Eres mi,\r\nMi, Mi\r\nChica ideal\r\nVaya, vaya\r\nQue Chica\r\n	Mac de marco	2025-11-08 22:52:50.510751
25	Amor eterno	Podrá nublarse el sol eternamente; Podrá secarse en un instante el mar; Podrá romperse el eje de la tierra Como un débil cristal. ¡todo sucederá! Podrá la muerte Cubrirme con su fúnebre crespón; Pero jamás en mí podrá apagarse La llama de tu amor. Autor: Gustavo Adolfo Bécquer	\N	2025-11-08 22:52:50.510751
26	Eco de almas	En el silencio de la noche, tu voz resuena en mí como un eco que no se apaga, un lazo invisible que une lo que el tiempo separa. No es posesión, sino fusión: tu dolor es mi sombra, mi alegría tu luz. En cada latido, reconozco que el amor verdadero no conquista, sino que se entrega, y en esa rendición, hallamos la libertad eterna.	Zahid	2025-11-08 22:52:50.510751
27	Te quiero con toda mi alma	Amor,\nte quiero con todo mi corazón.\nEres mi vida, mi amor eterno.\nTe amo con toda mi alma.\nEres mi cielo, mi estrella, mi todo.\nAmor,\npor ti daría mi vida.\nPor ti, mi amor, yo viviría y moriría.\nEres todo lo que quiero en mi vida.\nAmor,\nte quiero para siempre.	Ernesto Bravo 	2025-11-08 22:52:50.510751
28	Darte todo	Por primera vez en mí, experimento ese deseo de dar todo por alguien, alguien que vale la pena, alguien en la que me desangraría, y por el cual estoy dispuesto a estar toda mi vida buscando enamorarte cada vez más.	\N	2025-11-08 22:52:50.510751
29	El amor de mi vida.	Cada detalle resuena en mi cabeza, pues en cada momento, me recuerda a ti, ya que tu ausencia me hace recordarte en cada momento, cada canción, cada mensaje, cada recuerdo y el sentimiento bonito que nos depara la vida juntos.	Zahid	2025-11-08 22:52:50.510751
30	Memoria viva	Los recuerdos no son sombras del pasado, sino hilos que tejen nuestro presente, un tapiz donde cada hilo es un beso, una mirada, un suspiro. Aunque el tiempo intente borrarlas, tu esencia permanece, viva y profunda, recordándome que el amor verdadero no se olvida: se transforma en la fuerza que me impulsa a amarte más allá de los días.	\N	2025-11-08 22:52:50.510751
31	Desde aquella vez	Desde la primera vez en la que discutimos, tú pensabas que lo mejor era que cada quien tomara su propio camino, mientras que yo estaba seguro de que quería pasar el resto del mío caminando contigo de la mano.	Zahid	2025-11-08 22:52:50.510751
32	Únion invisible	No necesitamos palabras para unirnos; nuestro amor es un lazo invisible que cruza océanos y noches interminables. En tu ausencia, siento tu pulso en el mío, tu aliento en el viento. Es profundo porque nace del alma, verdadero porque resiste las dudas, eterno porque, en ti, encuentro mi verdadero yo.	\N	2025-11-08 22:52:50.510751
33	Heridas curadas	Las heridas del amor no cierran con olvido, sino con la ternura de tu mano que las toca y las transforma en cicatrices de fuerza. En cada dolor compartido, hallamos la verdad: que amar es vulnerarse, pero en esa vulnerabilidad, crecemos juntos, convirtiendo el sufrimiento en un vínculo inquebrantable.	\N	2025-11-08 22:52:50.510751
34	Eternidad efímera	Cada momento contigo es una eternidad efímera, un instante que captura la esencia del amor verdadero: no en grandezas, sino en lo cotidiano que se hace profundo. Tus ojos reflejan mi alma, tu tacto despierta lo dormido. En esta danza, desafiamos al tiempo, convirtiendo lo fugaz en un lazo que perdura.	\N	2025-11-08 22:52:50.510751
35	Tomar tu mano	De tu mano quiero aprender que el amor no es perfecto, que soy consciente de aprender de mis errores, y entender mas de amor, no solo de ello, si no de ti, amarte por tus errores, defectos y estar dispuesto a amarte muchísimo más cada día. Porque, de ti, puedo tomar tu mano, y seguir adelante.	Zahid	2025-11-08 22:52:50.510751
36	Corazón Coraza	Porque te tengo y no porque te pienso porque la noche está de ojos abiertos porque la noche pasa y digo amor porque has venido a recoger tu imagen y eres mejor que todas tus imágenes porque eres linda desde el pie hasta el alma porque eres buena desde el alma a mí porque te escondes dulce en el orgullo pequeña y dulce corazón coraza porque eres mía porque no eres mía porque te miro y muero y peor que muero si no te miro amor si no te miro porque tú siempre existes dondequiera pero existes mejor donde te quiero porque tu boca es sangre y tienes frío tengo que amarte amor tengo que amarte aunque esta herida duela como dos aunque te busque y no te encuentre y aunque la noche pase y yo te tenga y no.	Mario Benedetti	2025-11-08 22:52:50.510751
37	Tu nombre 	Tu nombre resuena en mí,\r\nComo un secreto precioso.\r\nUna palabra simple, una fe,\r\nGrabada para siempre en mis ojos.	\N	2025-11-08 22:52:50.510751
38	Un suspiro	Un suspiro, una palabra, un latido,\r\ny todo cobra sentido de nuevo.\r\nPorque el amor, verdadero y sincero,\r\nes la más bella de las luces.	Zahid	2025-11-08 22:52:50.510751
39	Táctica y Estrategia	Mi táctica es mirarte,\r\naprender como sos,\r\nquererte como sos,\r\nmi táctica es hablarte\r\ny escucharte,\r\nconstruir con palabras\r\nun puente indestructible\r	Mario Benedetti	2025-11-08 22:52:50.510751
40	Tú eres	Tú eres el tiempo que mis horas guía,\r\ntú eres la idea que a mi mente asiste,\r\nporque en ti se encuentra cuanto existe,\r\nmi pasión, mi esperanza, mi poesía.\r	Carolina Coronado	2025-11-08 22:52:50.510751
41	Los amorosos	El amor es el silencio más fino,\r\nel más tembloroso, el más insoportable.\r\nLos amorosos buscan, los amorosos son los que abandonan,\r\nson los que cambian, los que olvidan.\r\nSu corazón les dice que nunca han de encontrar,\r\nno encuentran, buscan.\r\n	Jaime Sabines	2025-11-08 22:52:50.510751
42	Alma desnuda	Soy un alma desnuda en estos versos,\r\nalma desnuda que el amor desgarra;\r\nsoy la loba que aúlla en la barda,\r\nla que busca y la que mata versos."\r\n"¡Ah, que el amor es algo que no se sabe,\r\nque no se entiende, que no se acaba!\r\n	de Alfonsina Storni	2025-11-08 22:52:50.510751
43	El amor es un centro	El amor es un centro\r\nque desde él se domina\r\nla inmensa, la total\r\nllanura de la vida.\r\nLo que antes era azares,\r\ncasualidades, prisas,\r\nes ahora un sistema,\r\nuna ruta, una vía.\r\nY en el centro: tú.\r	Pedro Salinas	2025-11-08 22:52:50.510751
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.test (id, text) FROM stdin;
1	Hello Wordl
\.


--
-- Name: poems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.poems_id_seq', 43, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.test_id_seq', 1, true);


--
-- Name: poems poems_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poems
    ADD CONSTRAINT poems_pkey PRIMARY KEY (id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict cN7mYdeTFMc45DErXTOEI9iujHbhJmehVjBgyU5LF83iIcHt3Cz6zMCQeTIdsaJ

