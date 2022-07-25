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
    year integer NOT NULL,
    round character varying NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
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

INSERT INTO public.games VALUES (186, 2018, 'Final', 91, 92, 4, 2);
INSERT INTO public.games VALUES (187, 2018, 'Third Place', 93, 94, 2, 0);
INSERT INTO public.games VALUES (188, 2018, 'Semi-Final', 92, 94, 2, 1);
INSERT INTO public.games VALUES (189, 2018, 'Semi-Final', 91, 93, 1, 0);
INSERT INTO public.games VALUES (190, 2018, 'Quarter-Final', 92, 95, 3, 2);
INSERT INTO public.games VALUES (191, 2018, 'Quarter-Final', 94, 96, 2, 0);
INSERT INTO public.games VALUES (192, 2018, 'Quarter-Final', 93, 97, 2, 1);
INSERT INTO public.games VALUES (193, 2018, 'Quarter-Final', 91, 98, 2, 0);
INSERT INTO public.games VALUES (194, 2018, 'Eighth-Final', 94, 99, 2, 1);
INSERT INTO public.games VALUES (195, 2018, 'Eighth-Final', 96, 100, 1, 0);
INSERT INTO public.games VALUES (196, 2018, 'Eighth-Final', 93, 101, 3, 2);
INSERT INTO public.games VALUES (197, 2018, 'Eighth-Final', 97, 102, 2, 0);
INSERT INTO public.games VALUES (198, 2018, 'Eighth-Final', 92, 103, 2, 1);
INSERT INTO public.games VALUES (199, 2018, 'Eighth-Final', 95, 104, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Eighth-Final', 98, 105, 2, 1);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 91, 106, 4, 3);
INSERT INTO public.games VALUES (202, 2014, 'Final', 107, 106, 1, 0);
INSERT INTO public.games VALUES (203, 2014, 'Third Place', 108, 97, 3, 0);
INSERT INTO public.games VALUES (204, 2014, 'Semi-Final', 106, 108, 1, 0);
INSERT INTO public.games VALUES (205, 2014, 'Semi-Final', 107, 97, 7, 1);
INSERT INTO public.games VALUES (206, 2014, 'Quarter-Final', 108, 109, 1, 0);
INSERT INTO public.games VALUES (207, 2014, 'Quarter-Final', 106, 93, 1, 0);
INSERT INTO public.games VALUES (208, 2014, 'Quarter-Final', 97, 99, 2, 1);
INSERT INTO public.games VALUES (209, 2014, 'Quarter-Final', 107, 91, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Eighth-Final', 97, 110, 2, 1);
INSERT INTO public.games VALUES (211, 2014, 'Eighth-Final', 99, 98, 2, 0);
INSERT INTO public.games VALUES (212, 2014, 'Eighth-Final', 91, 111, 2, 0);
INSERT INTO public.games VALUES (213, 2014, 'Eighth-Final', 107, 112, 2, 1);
INSERT INTO public.games VALUES (214, 2014, 'Eighth-Final', 108, 102, 2, 1);
INSERT INTO public.games VALUES (215, 2014, 'Eighth-Final', 109, 113, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Eighth-Final', 106, 100, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 93, 114, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (91, 'France');
INSERT INTO public.teams VALUES (92, 'Croatia');
INSERT INTO public.teams VALUES (93, 'Belgium');
INSERT INTO public.teams VALUES (94, 'England');
INSERT INTO public.teams VALUES (95, 'Russia');
INSERT INTO public.teams VALUES (96, 'Sweden');
INSERT INTO public.teams VALUES (97, 'Brazil');
INSERT INTO public.teams VALUES (98, 'Uruguay');
INSERT INTO public.teams VALUES (99, 'Colombia');
INSERT INTO public.teams VALUES (100, 'Switzerland');
INSERT INTO public.teams VALUES (101, 'Japan');
INSERT INTO public.teams VALUES (102, 'Mexico');
INSERT INTO public.teams VALUES (103, 'Denmark');
INSERT INTO public.teams VALUES (104, 'Spain');
INSERT INTO public.teams VALUES (105, 'Portugal');
INSERT INTO public.teams VALUES (106, 'Argentina');
INSERT INTO public.teams VALUES (107, 'Germany');
INSERT INTO public.teams VALUES (108, 'Netherlands');
INSERT INTO public.teams VALUES (109, 'Costa Rica');
INSERT INTO public.teams VALUES (110, 'Chile');
INSERT INTO public.teams VALUES (111, 'Nigeria');
INSERT INTO public.teams VALUES (112, 'Algeria');
INSERT INTO public.teams VALUES (113, 'Greece');
INSERT INTO public.teams VALUES (114, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 217, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 114, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

