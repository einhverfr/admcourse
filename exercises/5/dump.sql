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
-- Name: customer; Type: TABLE; Schema: public; Owner: christravers
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    first_name text,
    last_name text
);


ALTER TABLE public.customer OWNER TO christravers;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: christravers
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO christravers;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: christravers
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- Name: invoice; Type: TABLE; Schema: public; Owner: christravers
--

CREATE TABLE public.invoice (
    id integer NOT NULL,
    invnumber text,
    billed_on date
);


ALTER TABLE public.invoice OWNER TO christravers;

--
-- Name: invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: christravers
--

CREATE SEQUENCE public.invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_id_seq OWNER TO christravers;

--
-- Name: invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: christravers
--

ALTER SEQUENCE public.invoice_id_seq OWNED BY public.invoice.id;


--
-- Name: note; Type: TABLE; Schema: public; Owner: christravers
--

CREATE TABLE public.note (
    id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    subject text NOT NULL,
    contents text NOT NULL,
    refkey integer NOT NULL
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
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- Name: invoice id; Type: DEFAULT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.invoice ALTER COLUMN id SET DEFAULT nextval('public.invoice_id_seq'::regclass);


--
-- Name: note id; Type: DEFAULT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.note ALTER COLUMN id SET DEFAULT nextval('public.note_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: christravers
--

COPY public.customer (id, first_name, last_name) FROM stdin;
1	Adam	Schmidt
2	Rosa	Benelux
\.


--
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: christravers
--

COPY public.invoice (id, invnumber, billed_on) FROM stdin;
1	A001	2019-05-03
2	A002	2019-05-02
3	A003	2019-05-05
\.


--
-- Data for Name: note; Type: TABLE DATA; Schema: public; Owner: christravers
--

COPY public.note (id, created_at, subject, contents, refkey) FROM stdin;
\.


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christravers
--

SELECT pg_catalog.setval('public.customer_id_seq', 2, true);


--
-- Name: invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christravers
--

SELECT pg_catalog.setval('public.invoice_id_seq', 3, true);


--
-- Name: note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christravers
--

SELECT pg_catalog.setval('public.note_id_seq', 1, false);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: invoice invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: christravers
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

