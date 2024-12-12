--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-04 17:46:23

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
-- TOC entry 218 (class 1259 OID 49248)
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    uploaddate timestamp without time zone NOT NULL,
    comment_user integer NOT NULL,
    video integer NOT NULL,
    text text NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 49247)
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comments_id_seq OWNER TO postgres;

--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 217
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- TOC entry 4691 (class 2604 OID 49251)
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- TOC entry 4838 (class 0 OID 49248)
-- Dependencies: 218
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, uploaddate, comment_user, video, text, username) FROM stdin;
1	2023-10-20 15:30:00	1	1	¡Gran video! Muy informativo y bien explicado.	user1
3	2023-10-21 12:45:00	1	3	Una pregunta, ¿qué software utilizaste para hacer este video?	user1
2	2023-10-21 11:15:00	2	2	Me encantó la edición, ¡excelente trabajo!	user2
4	2023-10-22 09:30:00	3	3	Este video es muy útil para principiantes, ¡gracias por compartir!	admin
8	2024-11-17 18:54:16.024671	1	3	Es genial!	user1
9	2024-11-17 18:54:58.839387	1	5	Tiene una pinta deliciosa!	user1
10	2024-11-18 12:17:51.215663	1	4	Que miedo!	user1
12	2024-11-18 17:38:31.548224	1	2	Me encantan los gatos!	user1
20	2024-11-20 19:17:55.778131	1	1	Holaa	user1
26	2024-11-21 18:28:23.477779	1	25	JAJAJAJAJA	user1
41	2024-11-27 10:10:28.703241	2	1	Hola!¿podrías subir un video sobre la instalacion de PostgreSQL?	user2
42	2024-11-27 10:11:10.69417	2	25	Me he reido muchisimo!!	user2
43	2024-11-27 10:18:10.750735	4	26	JAJAJAJA me encantó el panda	javier
44	2024-11-27 10:23:24.966047	16	2	El tercer gato es igual que el mio	Juanma
45	2024-11-27 10:24:51.107012	16	27	Que ganas de jugarlo ya !!	Juanma
46	2024-11-27 10:29:16.290127	17	5	Genial, lo necesitaba hoy para hacer unos spaghetti	Mila
47	2024-11-27 10:36:06.754647	18	1	Me sirvió de mucho para el video que estoy haciendo, gracias!!	carlos
\.


--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 217
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 48, true);


--
-- TOC entry 4693 (class 2606 OID 49255)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


-- Completed on 2024-12-04 17:46:23

--
-- PostgreSQL database dump complete
--

