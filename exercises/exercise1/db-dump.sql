--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: note; Type: TABLE; Schema: public; Owner: christravers
--

CREATE TABLE public.note (
    id integer NOT NULL,
    fkey integer NOT NULL,
    subject text,
    contents text,
    entered_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.note OWNER TO christravers;

--
-- Name: note_id_seq; Type: SEQUENCE; Schema: public; Owner: christravers
--

CREATE SEQUENCE public.note_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.note_id_seq OWNER TO christravers;

--
-- Name: note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: christravers
--

ALTER SEQUENCE public.note_id_seq OWNED BY public.note.id;


--
-- Name: note id; Type: DEFAULT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.note ALTER COLUMN id SET DEFAULT nextval('public.note_id_seq'::regclass);


--
-- Data for Name: note; Type: TABLE DATA; Schema: public; Owner: christravers
--

COPY public.note (id, fkey, subject, contents, entered_at) FROM stdin;
1	2	Initial onboarding	Client needs specific help on implementing our services.  Referred to consulting services	2019-04-05 12:34:30
2	2	Consulting proposal	Have sent consulting proposal to client.  Expect atound 50 hrs to bring them up to speed.	2019-04-06 13:11:21
3	1	Termination	Have informed client we are terminating our contract.  We are unable to bridge this impass	2019-05-01 11:12:56
\.


--
-- Name: note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christravers
--

SELECT pg_catalog.setval('public.note_id_seq', 3, true);


--
-- Name: note note_pkey; Type: CONSTRAINT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

