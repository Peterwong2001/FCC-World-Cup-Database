--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_goals_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_goals_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_goals_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_goals_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_goals_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_goals_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 331, 332, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 333, 334, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 332, 334, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 331, 333, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 332, 335, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 334, 336, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 333, 337, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 331, 338, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 334, 339, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 336, 340, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 333, 341, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 337, 342, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 332, 343, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 335, 344, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 338, 345, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 331, 346, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 347, 346, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 348, 337, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 346, 348, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 347, 337, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 348, 349, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 346, 333, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 337, 339, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 347, 331, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 337, 350, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 339, 338, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 331, 351, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 347, 352, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 348, 342, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 349, 353, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 346, 340, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 333, 354, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (331, 'France');
INSERT INTO public.teams VALUES (332, 'Croatia');
INSERT INTO public.teams VALUES (333, 'Belgium');
INSERT INTO public.teams VALUES (334, 'England');
INSERT INTO public.teams VALUES (335, 'Russia');
INSERT INTO public.teams VALUES (336, 'Sweden');
INSERT INTO public.teams VALUES (337, 'Brazil');
INSERT INTO public.teams VALUES (338, 'Uruguay');
INSERT INTO public.teams VALUES (339, 'Colombia');
INSERT INTO public.teams VALUES (340, 'Switzerland');
INSERT INTO public.teams VALUES (341, 'Japan');
INSERT INTO public.teams VALUES (342, 'Mexico');
INSERT INTO public.teams VALUES (343, 'Denmark');
INSERT INTO public.teams VALUES (344, 'Spain');
INSERT INTO public.teams VALUES (345, 'Portugal');
INSERT INTO public.teams VALUES (346, 'Argentina');
INSERT INTO public.teams VALUES (347, 'Germany');
INSERT INTO public.teams VALUES (348, 'Netherlands');
INSERT INTO public.teams VALUES (349, 'Costa Rica');
INSERT INTO public.teams VALUES (350, 'Chile');
INSERT INTO public.teams VALUES (351, 'Nigeria');
INSERT INTO public.teams VALUES (352, 'Algeria');
INSERT INTO public.teams VALUES (353, 'Greece');
INSERT INTO public.teams VALUES (354, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_opponent_goals_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_goals_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 354, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_goals_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_goals_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

