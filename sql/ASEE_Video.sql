--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-04 17:46:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 216 (class 1259 OID 49237)
-- Name: video; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video (
    id integer NOT NULL,
    duration character varying(8) NOT NULL,
    title character varying(255) NOT NULL,
    uploaddate timestamp without time zone NOT NULL,
    description text,
    genre character varying(100),
    likes integer DEFAULT 0,
    agerestricted boolean DEFAULT false,
    countryrestricted text[] DEFAULT '{}'::text[],
    video_user bigint NOT NULL,
    views bigint DEFAULT 0
);


ALTER TABLE public.video OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 49236)
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.video_id_seq OWNER TO postgres;

--
-- TOC entry 4848 (class 0 OID 0)
-- Dependencies: 215
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;


--
-- TOC entry 4691 (class 2604 OID 49240)
-- Name: video id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);


--
-- TOC entry 4842 (class 0 OID 49237)
-- Dependencies: 216
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video (id, duration, title, uploaddate, description, genre, likes, agerestricted, countryrestricted, video_user, views) FROM stdin;
27	01:05:30	Gameplay oficial de KH4	2024-11-20 20:52:23	Primer gameplay oficial de Kingdom Hearts 4	otros	4501	f	{}	4	10069
51	00:30:00	La locura de DISI	2024-11-27 10:26:16	Como me volvi loca haciendo justinmind	comedia	0	f	{}	17	0
52	00:30:00	Speedrun de Mario 64 	2024-11-27 10:26:58	Intentando batir el record mundial de 32 stars	accion	0	f	{}	17	0
53	00:30:00	Reaccion al capitulo 120 de HxH	2024-11-27 10:27:58	Reaccion emotiva del ultimo cap de HxH	drama	0	f	{}	17	0
2	00:15:00	Funny Cat Compilation	2023-10-10 08:15:00	A compilation of funny cat videos.	comedia	223	f	\N	2	30
3	00:30:00	Advanced Python Tutorial	2024-11-23 13:17:19	An advanced tutorial on Python programming.	drama	1	f	{JP,FR,DE}	1	6
41	00:30:00	Dogs being dogs	2024-11-27 10:07:43	Video gracioso de perros haciendo lo que hacen los perros	comedia	0	f	{}	2	0
42	00:30:00	Proyecto ID	2024-11-27 10:09:12	Video explicativo de como he realizado mi proyecto de Imagen Digital	otros	0	f	{}	2	0
43	00:30:00	Trailer de mi pelicula de miedo	2024-11-27 17:44:21	Dio mas miedo hacerlo que verlo	terror	0	t	{USA,CA}	2	0
4	00:05:30	Horror Movie Trailer	2023-07-01 18:45:00	A trailer for the upcoming horror movie.	terror	46	t	{JP}	3	0
5	00:20:00	Cooking Pasta Like a Pro	2023-09-30 12:00:00	Learn to cook pasta with authentic Italian techniques.	accion	176	f	\N	4	8
54	00:30:00	Metodologías de estudio que te recomiendo	2024-11-27 10:32:38	Técnicas que me han ayudado a no abandonar en la carrera 	otros	0	f	{}	18	0
25	00:25:00	Caídas graciosas	2023-09-15 10:30:00	Recopilacion de caidas jaja	comedia	39	f	{}	3	311
45	00:30:00	La naturaleza de Extremadura	2024-11-27 10:15:10	Avistamiento de linces y otras aves del campo extremeño	documental	0	f	{}	4	0
46	00:30:00	Pasion de Gavilanes ep 1 Tertulia	2024-11-27 10:16:43	Hablando sobre el primer capitulo de la telenovela de Pasión de Gavilanes	drama	0	f	{}	4	0
47	00:30:00	Avistamientos en casa abandonada	2024-11-27 10:17:36	Visita paranormal en casa abandonada	terror	0	f	{}	4	0
56	00:30:00	Trailer de spiderman 4	2024-11-27 10:34:47	Hablamos sobre la filtración de la nueva pelicula y más.	accion	0	f	{}	18	0
26	00:15:00	Animales de China	2023-07-01 18:45:00	Conoce los animales mas raros de el pais oriental	documental	368	f	{}	3	5008
48	00:30:00	La logica de los endpoints y java	2024-11-27 10:20:57	Documental sobre el funcionamiento interno de uno de los lenguajes mas usados en Backend	documental	0	f	{}	16	0
49	00:30:00	Corrigiendo código en entornos críticos	2024-11-27 10:22:07	Corrigiendo rapido pero con cabeza	accion	0	f	{}	16	0
50	00:30:00	Errores tipicos de programador junior	2024-11-27 10:22:55	Compilación de errores mas comunes cuando empezamos en la programación	comedia	0	f	{}	16	0
1	00:30:00	Introduction to PostgreSQL	2024-11-23 13:24:04	A complete introduction to PostgreSQL databases. Con conexiones java y python.	otros	1	t	{}	1	16
57	00:30:00	ID, como lidiar con tu creatividad	2024-11-27 10:37:48	Te enseño mi experiencia en la asignatura y como encontrar temas para los trabajos	drama	0	f	{}	19	0
58	00:30:00	Reaccionando al ultimo clasico	2024-11-27 10:38:14	90 minutos de pura intensidad	accion	0	f	{}	19	0
59	00:30:00	¡Copiad Malditos!(Reacción)	2024-11-27 10:39:36	Como se trata el tema de los derechos de autor en España	documental	0	f	{}	19	0
55	00:30:00	Las Bases de Datos Orientadas a Grafos	2024-11-27 16:57:16	¿Que son?¿Como funcionan?En este documental te lo explicamos todo	documental	0	f	{JP}	18	0
\.


--
-- TOC entry 4849 (class 0 OID 0)
-- Dependencies: 215
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_id_seq', 60, true);


--
-- TOC entry 4697 (class 2606 OID 49246)
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


-- Completed on 2024-12-04 17:46:42

--
-- PostgreSQL database dump complete
--

