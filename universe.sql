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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    codename character varying(30) NOT NULL,
    age_in_million integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    codename character varying(30) NOT NULL,
    gravity_value integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    codename character varying(30) NOT NULL,
    gravity_value integer,
    age_in_millions numeric(4,1),
    description text,
    inhabited boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    codename character varying(30) NOT NULL,
    supernova boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: supercluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supercluster (
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    supercluster_id integer NOT NULL,
    codename character varying(30)
);


ALTER TABLE public.supercluster OWNER TO freecodecamp;

--
-- Name: supercluster_supercluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supercluster_supercluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supercluster_supercluster_id_seq OWNER TO freecodecamp;

--
-- Name: supercluster_supercluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supercluster_supercluster_id_seq OWNED BY public.supercluster.supercluster_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: supercluster supercluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster ALTER COLUMN supercluster_id SET DEFAULT nextval('public.supercluster_supercluster_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Messier 31', 1000, 'The andromeda galaxy');
INSERT INTO public.galaxy VALUES (2, 'Bear Paw', 'NGC 2537', 130000, 'The bear paw galaxy');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'NGC 4622', 12000, 'The backwards galaxy');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'Sagittarius A', 10000, 'The milky way');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Messier 101', 16000, 'The pinwheel galaxy');
INSERT INTO public.galaxy VALUES (6, 'The Porpoise Galaxy', 'NGC 2936', 14000, 'The porpoise galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Moon', 1, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 'Europa', 1, 3);
INSERT INTO public.moon VALUES (3, 'Encaladus', 'Encaladus', 1, 7);
INSERT INTO public.moon VALUES (4, 'Titan', 'Titan', 1, 7);
INSERT INTO public.moon VALUES (5, 'Io', 'Io', 1, 3);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Ganymede', 1, 3);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Callisto', 1, 3);
INSERT INTO public.moon VALUES (9, 'Triton', 'Triton', 1, 4);
INSERT INTO public.moon VALUES (10, 'Themisto', 'Themisto', 1, 3);
INSERT INTO public.moon VALUES (11, 'Paaliaq', 'Paaliaq', 1, 7);
INSERT INTO public.moon VALUES (12, 'Thebe', 'Thebe', 1, 3);
INSERT INTO public.moon VALUES (13, 'Cyllene', 'Cyllene', 1, 3);
INSERT INTO public.moon VALUES (14, 'Herse', 'Herse', 1, 3);
INSERT INTO public.moon VALUES (15, 'Methone', 'Methone', 1, 7);
INSERT INTO public.moon VALUES (16, 'Fornjot', 'Fornjot', 1, 7);
INSERT INTO public.moon VALUES (17, 'Eukalede', 'Eukalede', 1, 3);
INSERT INTO public.moon VALUES (18, 'Narvi', 'Narvi', 1, 7);
INSERT INTO public.moon VALUES (19, 'Iocaste', 'Iocaste', 1, 3);
INSERT INTO public.moon VALUES (20, 'Anthe', 'Anthe', 1, 7);
INSERT INTO public.moon VALUES (21, 'Himalia', 'Himalia', 1, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terra', 1, 100.0, 'The Earth', true, 6);
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars', 1, 100.0, 'Mars', false, 6);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Jupiter', 1, 100.0, 'Jupiter', false, 6);
INSERT INTO public.planet VALUES (4, 'Neptune', 'Neptune', 1, 100.0, 'Neptune', false, 6);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Mercury', 1, 100.0, 'Mercury', false, 6);
INSERT INTO public.planet VALUES (6, 'Venus', 'Venus', 1, 100.0, 'Venus', false, 6);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Saturn', 1, 100.0, 'Saturn', false, 6);
INSERT INTO public.planet VALUES (8, 'Pluto', 'Pluto', 1, 100.0, 'Pluto', false, 6);
INSERT INTO public.planet VALUES (9, 'Uranus', 'Uranus', 1, 100.0, 'Uranus', false, 6);
INSERT INTO public.planet VALUES (11, 'Hoth', 'Hoth', 1, 100.0, 'Hoth', false, 7);
INSERT INTO public.planet VALUES (12, 'Dimidium', 'Dimidium', 1, 100.0, 'Dimidium', false, 7);
INSERT INTO public.planet VALUES (13, 'Kepler 16-b', 'Kepler-16-b', 1, 100.0, 'Kepler-16b', false, 7);
INSERT INTO public.planet VALUES (14, 'Kepler 22-b', 'Kepler-22-b', 1, 100.0, 'Kepler-22b', false, 7);
INSERT INTO public.planet VALUES (15, 'Kepler 7-b', 'Kepler-7-b', 1, 100.0, 'Kepler-7b', false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda Star 1', 'Star 1', false, 1);
INSERT INTO public.star VALUES (2, 'Andromeda Star 2', 'Star 2', false, 1);
INSERT INTO public.star VALUES (3, 'Andromeda Star 3', 'Star 3', true, 1);
INSERT INTO public.star VALUES (4, 'Andromeda Star 3', 'Star 4', false, 1);
INSERT INTO public.star VALUES (6, 'Milky Way Star 1', 'Star 5', false, 4);
INSERT INTO public.star VALUES (7, 'Milky Way Star 2', 'Star 6', false, 4);


--
-- Data for Name: supercluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supercluster VALUES ('Sculpter', 1000, 1, NULL);
INSERT INTO public.supercluster VALUES ('Hercules', 1200, 2, NULL);
INSERT INTO public.supercluster VALUES ('Leo', 500, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: supercluster_supercluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supercluster_supercluster_id_seq', 3, true);


--
-- Name: galaxy galaxy_codename_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_codename_key UNIQUE (codename);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_codename_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_codename_key UNIQUE (codename);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_codename_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_codename_key UNIQUE (codename);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_codename_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_codename_key UNIQUE (codename);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: supercluster supercluster_codename_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_codename_key UNIQUE (codename);


--
-- Name: supercluster supercluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_pkey PRIMARY KEY (supercluster_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

