{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --\
-- PostgreSQL database dump\
--\
\
-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
DROP DATABASE universe;\
--\
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp\
--\
\
CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';\
\
\
ALTER DATABASE universe OWNER TO freecodecamp;\
\
\\connect universe\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
SET default_tablespace = '';\
\
SET default_table_access_method = heap;\
\
--\
-- Name: age; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.age (\
    age_id integer NOT NULL,\
    name character varying(30) NOT NULL,\
    age_billion_years numeric\
);\
\
\
ALTER TABLE public.age OWNER TO freecodecamp;\
\
--\
-- Name: age_age_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.age_age_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.age_age_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: age_age_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.age_age_id_seq OWNED BY public.age.age_id;\
\
\
--\
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.galaxy (\
    galaxy_id integer NOT NULL,\
    name character varying(60) NOT NULL,\
    galaxy_type text,\
    size_in_light_years integer,\
    distance_in_mega_light_year numeric\
);\
\
\
ALTER TABLE public.galaxy OWNER TO freecodecamp;\
\
--\
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.galaxy_galaxy_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;\
\
\
--\
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.moon (\
    moon_id integer NOT NULL,\
    name character varying(60) NOT NULL,\
    has_life boolean,\
    surface_area_in_skm text,\
    planet_id integer\
);\
\
\
ALTER TABLE public.moon OWNER TO freecodecamp;\
\
--\
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.moon_moon_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;\
\
\
--\
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.planet (\
    planet_id integer NOT NULL,\
    name character varying(60) NOT NULL,\
    has_life boolean,\
    moons_qty integer,\
    star_id integer\
);\
\
\
ALTER TABLE public.planet OWNER TO freecodecamp;\
\
--\
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.planet_planet_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;\
\
\
--\
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.star (\
    star_id integer NOT NULL,\
    name character varying(60) NOT NULL,\
    mass_in_kg text,\
    radius_in_km integer,\
    galaxy_id integer\
);\
\
\
ALTER TABLE public.star OWNER TO freecodecamp;\
\
--\
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.star_star_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;\
\
\
--\
-- Name: age age_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.age ALTER COLUMN age_id SET DEFAULT nextval('public.age_age_id_seq'::regclass);\
\
\
--\
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);\
\
\
--\
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);\
\
\
--\
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);\
\
\
--\
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);\
\
\
--\
-- Data for Name: age; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.age VALUES (1, 'Milky Way', 13.61);\
INSERT INTO public.age VALUES (2, 'Sun', 4.603);\
INSERT INTO public.age VALUES (3, 'Earth', 4.543);\
INSERT INTO public.age VALUES (4, 'Moon', 4.53);\
\
\
--\
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Barred Spiral', 152000, 2.50);\
INSERT INTO public.galaxy VALUES (2, 'Sombrero', 'Unbarred Spiral', 94900, 31.1);\
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Spiral', 76900, 31.0);\
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'Spiral', 169300, 29.9);\
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Barred Spiral', 87400, 0.025881);\
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Ring', 144300, 500.0);\
\
\
--\
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.moon VALUES (1, 'Icemoon', false, '4.453\'d710^7', 1);\
INSERT INTO public.moon VALUES (2, 'Rockmoon', false, '2.75x10^23', 2);\
INSERT INTO public.moon VALUES (3, 'Gasmoon', false, '8.324x10^7', 3);\
INSERT INTO public.moon VALUES (4, 'Blackmoon', false, '8.987x10^3', 4);\
INSERT INTO public.moon VALUES (5, 'Moon', false, '3.793\'d710^7', 5);\
INSERT INTO public.moon VALUES (6, 'Redmoon', false, '5.32x10^3', 6);\
INSERT INTO public.moon VALUES (7, 'Deimos', false, '495.1548', 9);\
INSERT INTO public.moon VALUES (8, 'N/A 1', false, 'N/A', 7);\
INSERT INTO public.moon VALUES (9, 'N/A 2', false, 'N/A', 8);\
INSERT INTO public.moon VALUES (10, 'Phobos', false, '1548.3', 9);\
INSERT INTO public.moon VALUES (11, 'Io', false, '41910000', 10);\
INSERT INTO public.moon VALUES (12, 'Europa', false, '3.09\'d710^7', 10);\
INSERT INTO public.moon VALUES (13, 'Ganymede', false, '8.72\'d710^7', 10);\
INSERT INTO public.moon VALUES (30, 'Pan', false, '1910000', 11);\
INSERT INTO public.moon VALUES (31, 'Daphnis', false, '23870000', 11);\
INSERT INTO public.moon VALUES (32, 'Atlas', false, '19986004', 11);\
INSERT INTO public.moon VALUES (33, 'Ophelia', false, '38870000', 12);\
INSERT INTO public.moon VALUES (34, 'Cordelia', false, '13346004', 12);\
INSERT INTO public.moon VALUES (35, 'Naiad', false, '564873', 13);\
INSERT INTO public.moon VALUES (36, 'Despina', false, '2398760', 13);\
\
\
--\
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.planet VALUES (1, 'Iceplanet', false, 3, 1);\
INSERT INTO public.planet VALUES (2, 'Rockplanet', false, 0, 2);\
INSERT INTO public.planet VALUES (3, 'Gasplanet', false, 9, 3);\
INSERT INTO public.planet VALUES (4, 'Blackplanet', false, 0, 4);\
INSERT INTO public.planet VALUES (5, 'Earth', true, 1, 5);\
INSERT INTO public.planet VALUES (6, 'Redplanet', false, 17, 6);\
INSERT INTO public.planet VALUES (7, 'Mercury', false, 0, 5);\
INSERT INTO public.planet VALUES (8, 'Venus', false, 0, 5);\
INSERT INTO public.planet VALUES (9, 'Mars', false, 2, 5);\
INSERT INTO public.planet VALUES (10, 'Jupiter', false, 79, 5);\
INSERT INTO public.planet VALUES (11, 'Saturn', false, 82, 5);\
INSERT INTO public.planet VALUES (12, 'Uranus', false, 27, 5);\
INSERT INTO public.planet VALUES (13, 'Neptune', false, 14, 5);\
\
\
--\
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.star VALUES (1, 'Alpheratz', '7.5582x10^30', 1949752, 1);\
INSERT INTO public.star VALUES (2, 'Brightstar', '2.82x10^9', 949752, 2);\
INSERT INTO public.star VALUES (3, 'Dimstar', '11.43x10^12', 745899, 3);\
INSERT INTO public.star VALUES (4, 'Darkstar', '3.34x10^27', 1256900, 4);\
INSERT INTO public.star VALUES (5, 'Sun', '1.989x10^30', 696340, 5);\
INSERT INTO public.star VALUES (6, 'Warmstar', '1.238x10^10', 245367, 6);\
\
\
--\
-- Name: age_age_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.age_age_id_seq', 4, true);\
\
\
--\
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);\
\
\
--\
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);\
\
\
--\
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);\
\
\
--\
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);\
\
\
--\
-- Name: age age_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.age\
    ADD CONSTRAINT age_name_key UNIQUE (name);\
\
\
--\
-- Name: age age_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.age\
    ADD CONSTRAINT age_pkey PRIMARY KEY (age_id);\
\
\
--\
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy\
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);\
\
\
--\
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy\
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);\
\
\
--\
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_name_key UNIQUE (name);\
\
\
--\
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);\
\
\
--\
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_name_key UNIQUE (name);\
\
\
--\
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);\
\
\
--\
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_name_key UNIQUE (name);\
\
\
--\
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);\
\
\
--\
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);\
\
\
--\
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);\
\
\
--\
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);\
\
\
--\
-- PostgreSQL database dump complete\
--}