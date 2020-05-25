--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: docs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docs (
    id bigint NOT NULL,
    payload jsonb
);


ALTER TABLE public.docs OWNER TO postgres;

--
-- Name: docs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.docs_id_seq OWNER TO postgres;

--
-- Name: docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.docs_id_seq OWNED BY public.docs.id;


--
-- Name: docs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docs ALTER COLUMN id SET DEFAULT nextval('public.docs_id_seq'::regclass);


--
-- Data for Name: docs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docs (id, payload) FROM stdin;
1	{"patent_date": "2017-05-01", "patent_title": "A FIFO system for managing grocery store cashier lines", "patent_number": 1011223, "patent_country": "US"}
2	{"patent_date": "2014-06-11", "patent_title": "A method for fast-processing of corn for maseca", "patent_number": 102222, "patent_country": "MX"}
3	{"patent_date": "2019-04-22", "patent_title": "A novel protein for antibody treatment for certain tumors", "patnet_number": 1221112, "patent_country": "US"}
\.


--
-- Name: docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.docs_id_seq', 3, true);


--
-- Name: docs docs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docs
    ADD CONSTRAINT docs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

