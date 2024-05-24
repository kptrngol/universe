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
-- Name: civilisation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilisation (
    civilisation_id integer NOT NULL,
    planet_id integer,
    name character varying NOT NULL
);


ALTER TABLE public.civilisation OWNER TO freecodecamp;

--
-- Name: civilisation_civilisation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilisation_civilisation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilisation_civilisation_id_seq OWNER TO freecodecamp;

--
-- Name: civilisation_civilisation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilisation_civilisation_id_seq OWNED BY public.civilisation.civilisation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    stars_in_billion integer,
    size_kpc integer NOT NULL,
    living_conditions text
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
    planet_id integer,
    name character varying NOT NULL,
    has_life boolean NOT NULL,
    objects_number integer,
    weight numeric(10,3)
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
    star_id integer,
    name character varying NOT NULL,
    has_life boolean NOT NULL,
    moons_number integer,
    weight numeric(10,3)
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
    galaxy_id integer,
    name character varying NOT NULL,
    type_of_star text NOT NULL,
    weight numeric(10,3)
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
-- Name: civilisation civilisation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation ALTER COLUMN civilisation_id SET DEFAULT nextval('public.civilisation_civilisation_id_seq'::regclass);


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
-- Data for Name: civilisation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilisation VALUES (1, 1, 'Humanity');
INSERT INTO public.civilisation VALUES (2, 5, 'Alien Civ A');
INSERT INTO public.civilisation VALUES (3, 6, 'Alien Civ B');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 400, 26, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, 46, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 10, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 5, 1, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bear Paw Galaxy', 30, 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 100, 16, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (39, 4, 'Titan', false, 0, 0.134);
INSERT INTO public.moon VALUES (40, 4, 'Enceladus', false, 0, 0.012);
INSERT INTO public.moon VALUES (41, 5, 'Miranda', false, 0, 0.007);
INSERT INTO public.moon VALUES (42, 5, 'Ariel', false, 0, 0.013);
INSERT INTO public.moon VALUES (43, 5, 'Umbriel', false, 0, 0.012);
INSERT INTO public.moon VALUES (44, 6, 'Triton', false, 0, 0.214);
INSERT INTO public.moon VALUES (45, 6, 'Nereid', false, 0, 0.003);
INSERT INTO public.moon VALUES (46, 1, 'Ganymede', false, 0, 0.148);
INSERT INTO public.moon VALUES (47, 1, 'Callisto', false, 0, 0.108);
INSERT INTO public.moon VALUES (48, 1, 'Europa', false, 0, 0.048);
INSERT INTO public.moon VALUES (49, 1, 'Io', false, 0, 0.089);
INSERT INTO public.moon VALUES (50, 1, 'Rhea', false, 0, 0.023);
INSERT INTO public.moon VALUES (51, 1, 'Dione', false, 0, 0.011);
INSERT INTO public.moon VALUES (52, 1, 'Tethys', false, 0, 0.007);
INSERT INTO public.moon VALUES (53, 1, 'Mimas', false, 0, 0.003);
INSERT INTO public.moon VALUES (54, 1, 'Oberon', false, 0, 0.011);
INSERT INTO public.moon VALUES (55, 1, 'Titania', false, 0, 0.014);
INSERT INTO public.moon VALUES (56, 1, 'Iapetus', false, 0, 0.016);
INSERT INTO public.moon VALUES (57, 1, 'Phoebe', false, 0, 0.008);
INSERT INTO public.moon VALUES (58, 4, 'b', false, 0, 0.134);
INSERT INTO public.moon VALUES (59, 4, 'a', false, 0, 0.012);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Saturn', false, 82, 568.340);
INSERT INTO public.planet VALUES (2, 1, 'Uranus', false, 27, 86.810);
INSERT INTO public.planet VALUES (3, 1, 'Neptune', false, 14, 102.410);
INSERT INTO public.planet VALUES (4, 1, 'Venus', false, 0, 4.867);
INSERT INTO public.planet VALUES (5, 2, 'Planet D', false, 3, 12.000);
INSERT INTO public.planet VALUES (6, 3, 'Planet E', true, 2, 9.800);
INSERT INTO public.planet VALUES (7, 4, 'Planet F', false, 5, 7.200);
INSERT INTO public.planet VALUES (8, 5, 'Planet G', true, 1, 6.400);
INSERT INTO public.planet VALUES (9, 6, 'Planet H', false, 0, 11.000);
INSERT INTO public.planet VALUES (10, 4, 'Planet K', false, 2, 3.285);
INSERT INTO public.planet VALUES (11, 5, 'Planet L', true, 4, 7.800);
INSERT INTO public.planet VALUES (12, 6, 'Planet M', false, 1, 2.100);
INSERT INTO public.planet VALUES (13, 1, 'Planet N', false, 0, 0.330);
INSERT INTO public.planet VALUES (14, 2, 'Planet O', false, 13, 17.200);
INSERT INTO public.planet VALUES (15, 3, 'Planet P', false, 6, 1.024);
INSERT INTO public.planet VALUES (16, 4, 'Planet Q', true, 8, 3.938);
INSERT INTO public.planet VALUES (17, 5, 'Planet R', false, 2, 0.690);
INSERT INTO public.planet VALUES (18, 6, 'Planet S', false, 3, 14.600);
INSERT INTO public.planet VALUES (19, 1, 'Planet T', false, 0, 0.872);
INSERT INTO public.planet VALUES (20, 2, 'Planet U', false, 11, 15.400);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'The Sun', 'Yellow dwarf', 1.989);
INSERT INTO public.star VALUES (2, 2, 'A', 'Yellow dwarf', 2.030);
INSERT INTO public.star VALUES (3, 2, 'B', 'Red giant', 2.100);
INSERT INTO public.star VALUES (4, 2, 'C', 'Blue supergiant', 3.200);
INSERT INTO public.star VALUES (5, 2, 'D', 'White dwarf', 0.900);
INSERT INTO public.star VALUES (6, 2, 'E', 'Neutron star', 1.400);


--
-- Name: civilisation_civilisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilisation_civilisation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 59, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civilisation civilisation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation
    ADD CONSTRAINT civilisation_name_key UNIQUE (name);


--
-- Name: civilisation civilisation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation
    ADD CONSTRAINT civilisation_pkey PRIMARY KEY (civilisation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: civilisation civilisation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilisation
    ADD CONSTRAINT civilisation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--