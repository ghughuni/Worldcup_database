--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(250) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(250) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 25, 26, 2, 4, 2018, 'Final');
INSERT INTO public.games VALUES (66, 27, 28, 0, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 26, 28, 1, 2, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 25, 27, 0, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 26, 29, 2, 3, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 28, 30, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 27, 31, 1, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 25, 32, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 28, 33, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 30, 34, 0, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 27, 35, 2, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 31, 36, 0, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 26, 37, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 29, 38, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 32, 39, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 25, 40, 3, 4, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 41, 40, 0, 1, 2014, 'Final');
INSERT INTO public.games VALUES (82, 42, 31, 0, 3, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 40, 42, 0, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 41, 31, 1, 7, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 42, 43, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 40, 27, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 31, 33, 1, 2, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 41, 25, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 31, 44, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 33, 32, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 25, 45, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 41, 46, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 42, 36, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 43, 47, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 40, 34, 0, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 27, 48, 1, 2, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'France');
INSERT INTO public.teams VALUES (26, 'Croatia');
INSERT INTO public.teams VALUES (27, 'Belgium');
INSERT INTO public.teams VALUES (28, 'England');
INSERT INTO public.teams VALUES (29, 'Russia');
INSERT INTO public.teams VALUES (30, 'Sweden');
INSERT INTO public.teams VALUES (31, 'Brazil');
INSERT INTO public.teams VALUES (32, 'Uruguay');
INSERT INTO public.teams VALUES (33, 'Colombia');
INSERT INTO public.teams VALUES (34, 'Switzerland');
INSERT INTO public.teams VALUES (35, 'Japan');
INSERT INTO public.teams VALUES (36, 'Mexico');
INSERT INTO public.teams VALUES (37, 'Denmark');
INSERT INTO public.teams VALUES (38, 'Spain');
INSERT INTO public.teams VALUES (39, 'Portugal');
INSERT INTO public.teams VALUES (40, 'Argentina');
INSERT INTO public.teams VALUES (41, 'Germany');
INSERT INTO public.teams VALUES (42, 'Netherlands');
INSERT INTO public.teams VALUES (43, 'Costa Rica');
INSERT INTO public.teams VALUES (44, 'Chile');
INSERT INTO public.teams VALUES (45, 'Nigeria');
INSERT INTO public.teams VALUES (46, 'Algeria');
INSERT INTO public.teams VALUES (47, 'Greece');
INSERT INTO public.teams VALUES (48, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

