--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO postgres;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    username character varying(22),
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'd', 10);
INSERT INTO public.games VALUES (2, 'user_1794486854846', 437);
INSERT INTO public.games VALUES (3, 'user_1794486854846', 162);
INSERT INTO public.games VALUES (4, 'user_1794486854845', 23);
INSERT INTO public.games VALUES (5, 'user_1794486854845', 801);
INSERT INTO public.games VALUES (6, 'user_1794486854846', 516);
INSERT INTO public.games VALUES (7, 'user_1794486854846', 651);
INSERT INTO public.games VALUES (8, 'user_1794486854846', 832);
INSERT INTO public.games VALUES (9, 'user_1794486939998', 50);
INSERT INTO public.games VALUES (10, 'user_1794486939998', 882);
INSERT INTO public.games VALUES (11, 'user_1794486939997', 888);
INSERT INTO public.games VALUES (12, 'user_1794486939997', 980);
INSERT INTO public.games VALUES (13, 'user_1794486939998', 108);
INSERT INTO public.games VALUES (14, 'user_1794486939998', 876);
INSERT INTO public.games VALUES (15, 'user_1794486939998', 497);
INSERT INTO public.games VALUES (16, 'user_1794486986674', 44);
INSERT INTO public.games VALUES (17, 'user_1794486986674', 42);
INSERT INTO public.games VALUES (18, 'user_1794486986673', 346);
INSERT INTO public.games VALUES (19, 'user_1794486986673', 668);
INSERT INTO public.games VALUES (20, 'user_1794486986674', 73);
INSERT INTO public.games VALUES (21, 'user_1794486986674', 84);
INSERT INTO public.games VALUES (22, 'user_1794486986674', 681);
INSERT INTO public.games VALUES (23, 'user_1794487116095', 553);
INSERT INTO public.games VALUES (24, 'user_1794487116095', 543);
INSERT INTO public.games VALUES (25, 'user_1794487116094', 988);
INSERT INTO public.games VALUES (26, 'user_1794487116094', 711);
INSERT INTO public.games VALUES (27, 'user_1794487116095', 582);
INSERT INTO public.games VALUES (28, 'user_1794487116095', 468);
INSERT INTO public.games VALUES (29, 'user_1794487116095', 226);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 29, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

