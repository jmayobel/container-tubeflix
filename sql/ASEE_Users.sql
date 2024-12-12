--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-04 17:45:53

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
-- TOC entry 216 (class 1259 OID 24581)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    bio text,
    role character varying(50) DEFAULT 'User'::character varying,
    country character varying(100),
    profilepicture text,
    birthdate date,
    uploadedvideos bigint[],
    watchedvideos bigint[],
    followers bigint[],
    following bigint[],
    liked_video_ids bigint[]
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24580)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4687 (class 2604 OID 24584)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4839 (class 0 OID 24581)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, firstname, lastname, email, password, bio, role, country, profilepicture, birthdate, uploadedvideos, watchedvideos, followers, following, liked_video_ids) FROM stdin;
4	javier	Javier	Milan	javier@javier.es	javier	holiiii	User	españa	\N	2013-06-20	{}	{26}	{1,16,17,18,19}	{18,19,17,16}	{26}
1	user1	Javi	Chacon	john.doe@example.com	password123	Amante de la programacion web con Spring.Actualmente trabajando duro en esta aplicacion.	User	españa	https://example.com/images/user1.jpg	2002-03-10	{}	{3,1,5,4,2,25,27}	{2}	{2,4,3}	{4,1,25,2,3}
19	Nico	Nicolás	Benito	nico@nico.com	nico	Miembro del desarrollo de TubeFlix	User	españa	\N	2001-06-11	{}	{}	{16,4,18,17,3}	{17,18,16,4}	{}
3	admin	Admin	User	admin@example.com	adminPass789	Administrador de la plataforma.	Admin	UK	https://example.com/images/admin.jpg	1980-01-01	{}	{}	{2,1}	{19}	{}
2	user2	Jane	Smith	jane.smith@example.com	securePass456	Aficionada al cine y la fotografía.	User	Canada	https://example.com/images/user2.jpg	1985-10-23	{}	{1,25}	{1}	{3,1}	{25}
16	Juanma	Juanma	Mayo	jaunma@juanma.com	juanma	Programador profesional de backend en Spring y Java	User	españa	\N	2000-03-06	{}	{2,27}	{17,18,19,4}	{4,17,18,19}	{2,27}
18	carlos	Carlos	Garcia	carlos@carlos.com	carlos	Chco trabajador y estudiante de informatica	User	españa	\N	2003-10-17	{}	{1}	{19,16,4,17}	{17,16,4,19}	{1}
17	Mila	Mila	Tejado	mila@mila.com	mila	Estudiante de IIS en la UEx	User	españa	\N	2002-07-18	{}	{5}	{18,19,16,4}	{16,4,19,18}	{5}
\.


--
-- TOC entry 4846 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 20, true);


--
-- TOC entry 4690 (class 2606 OID 24593)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4692 (class 2606 OID 24589)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4694 (class 2606 OID 24591)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


-- Completed on 2024-12-04 17:45:53

--
-- PostgreSQL database dump complete
--

