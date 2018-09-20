--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

-- Started on 2018-09-06 16:52:04

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 24638)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name text,
    country text
);


ALTER TABLE public.city OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 24632)
-- Name: football_clubs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.football_clubs (
    id integer NOT NULL,
    name text,
    stadium text,
    city_id integer,
    quantity_trophies integer,
    budget_dol integer,
    president_n_and_ln character varying(20)
);


ALTER TABLE public.football_clubs OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 24652)
-- Name: league; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.league (
    id integer NOT NULL,
    name text,
    uefa_rating integer,
    club_id integer
);


ALTER TABLE public.league OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24743)
-- Name: stadium; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stadium (
    stadium_id integer NOT NULL,
    club_id integer,
    stad_name text,
    stadium_cap integer
);


ALTER TABLE public.stadium OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 24668)
-- Name: trophie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trophie (
    id integer NOT NULL,
    name text,
    foundation_year text,
    club_id integer,
    quantity integer
);


ALTER TABLE public.trophie OWNER TO postgres;

--
-- TOC entry 2830 (class 0 OID 24638)
-- Dependencies: 197
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.city (id, name, country) VALUES (1, 'london', 'england');
INSERT INTO public.city (id, name, country) VALUES (2, 'barcelona', 'spain');
INSERT INTO public.city (id, name, country) VALUES (3, 'munich', 'germany');
INSERT INTO public.city (id, name, country) VALUES (4, 'amsterdam', 'holland');
INSERT INTO public.city (id, name, country) VALUES (5, 'donetsk', 'ukraine');
INSERT INTO public.city (id, name, country) VALUES (6, 'lviv', 'ukraine');
INSERT INTO public.city (id, name, country) VALUES (7, 'madrid', 'spain');
INSERT INTO public.city (id, name, country) VALUES (8, 'dortmund', 'germany');
INSERT INTO public.city (id, name, country) VALUES (9, 'kyiv', 'ukraine');
INSERT INTO public.city (id, name, country) VALUES (10, 'paris', 'france');
INSERT INTO public.city (id, name, country) VALUES (11, 'manchester', 'england');


--
-- TOC entry 2829 (class 0 OID 24632)
-- Dependencies: 196
-- Data for Name: football_clubs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (1, 'arsenal', 'emirates stadium', 1, 1, 100000, 'arsen wenger');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (4, 'ajax', 'ajax stadium', 4, 1, 300000, 'Rafael van der vart');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (5, 'shakhtar', 'lviv arena', 5, 1, 50000, 'rinat akhmetov');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (7, 'chealsea', 'london stadium', 1, 1, 300000, 'roman abramobvic');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (10, 'real madrid', 'santiago bernabeu', 7, 1, 30000000, 'florentino perez');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (11, 'athletico madrid', 'wandametrapolitano', 7, 1, 200000, 'diego simione');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (12, 'manchester united', 'mu stadium', 11, 0, 2000000, 'alex ferguson');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (13, 'psg', 'paris stadium', 10, 0, 30000000, 'arman habi');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (2, 'barcelona', 'camp nou', 2, 0, 2000000, 'holen lopetegi');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (3, 'bayern', 'allianz arena', 3, 0, 500000, 'dorm shmitz');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (6, 'karpaty', 'lviv arena', 6, 0, 2000, 'petro shcur');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (8, 'borussia dortmund', 'westfalenstadion', 8, 0, 30000, 'peter boss');
INSERT INTO public.football_clubs (id, name, stadium, city_id, quantity_trophies, budget_dol, president_n_and_ln) VALUES (9, 'dynamo kyiv', 'nsc olimpiyskiy', 9, 0, 3000, 'ihor surkis');


--
-- TOC entry 2831 (class 0 OID 24652)
-- Dependencies: 198
-- Data for Name: league; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (1, 'premier league', 2, 1);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (2, 'everdivise', 5, 4);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (3, 'la liga', 1, 2);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (4, 'ukrainian premier league', 7, 5);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (5, 'bundesliga', 3, 3);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (6, 'league 1', 6, 13);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (7, 'ukrainian premier league', 7, 6);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (8, 'ukrainian premier league', 7, 9);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (9, 'bundesliga', 3, 8);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (10, 'la liga', 1, 10);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (11, 'la liga', 1, 11);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (12, 'premier league', 2, 7);
INSERT INTO public.league (id, name, uefa_rating, club_id) VALUES (13, 'premier league', 2, 12);


--
-- TOC entry 2833 (class 0 OID 24743)
-- Dependencies: 200
-- Data for Name: stadium; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (1, 1, 'emirates stadium', 20000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (2, 2, 'camp nou', 40000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (3, 3, 'allianz arena', 50000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (4, 4, 'ajax stadium', 6000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (5, 5, 'lviv arena', 30000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (6, 6, 'lviv arena', 30000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (7, 7, 'london stadium', 50000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (8, 8, 'westfalenstadion', 80000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (9, 9, 'nsc olimpiyskiy', 35000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (10, 10, 'santiago bernabeu', 90000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (11, 11, 'wandametrapolitano', 15000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (12, 12, 'mu stadium', 60000);
INSERT INTO public.stadium (stadium_id, club_id, stad_name, stadium_cap) VALUES (13, 13, 'paris stadium', 40000);


--
-- TOC entry 2832 (class 0 OID 24668)
-- Dependencies: 199
-- Data for Name: trophie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (2, 'spain cup', '1980', 2, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (1, 'champion league cup', '1900', 1, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (3, 'evercup', '1850', 4, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (4, 'ua cup', '1955', 5, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (5, 'ua cup', '1955', 9, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (6, 'apl cup', '1800', 7, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (7, 'spain cup', '1980', 10, 1);
INSERT INTO public.trophie (id, name, foundation_year, club_id, quantity) VALUES (8, 'spain cup', '1980', 11, 1);


--
-- TOC entry 2693 (class 2606 OID 24645)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 2691 (class 2606 OID 24656)
-- Name: football_clubs football_clubs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.football_clubs
    ADD CONSTRAINT football_clubs_pkey PRIMARY KEY (id);


--
-- TOC entry 2696 (class 2606 OID 24661)
-- Name: league league_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.league
    ADD CONSTRAINT league_pkey PRIMARY KEY (id);


--
-- TOC entry 2702 (class 2606 OID 24750)
-- Name: stadium stadium_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stadium_pkey PRIMARY KEY (stadium_id);


--
-- TOC entry 2699 (class 2606 OID 24675)
-- Name: trophie trophie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trophie
    ADD CONSTRAINT trophie_pkey PRIMARY KEY (id);


--
-- TOC entry 2689 (class 1259 OID 24651)
-- Name: fki_city_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_city_id ON public.football_clubs USING btree (city_id);


--
-- TOC entry 2694 (class 1259 OID 24667)
-- Name: fki_club_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_club_id ON public.league USING btree (club_id);


--
-- TOC entry 2697 (class 1259 OID 24686)
-- Name: fki_club_id_to_trophies; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_club_id_to_trophies ON public.trophie USING btree (club_id);


--
-- TOC entry 2700 (class 1259 OID 24756)
-- Name: fki_stad_to_club; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_stad_to_club ON public.stadium USING btree (club_id);


--
-- TOC entry 2703 (class 2606 OID 24646)
-- Name: football_clubs city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.football_clubs
    ADD CONSTRAINT city_id FOREIGN KEY (city_id) REFERENCES public.city(id);


--
-- TOC entry 2704 (class 2606 OID 24662)
-- Name: league club_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.league
    ADD CONSTRAINT club_id FOREIGN KEY (club_id) REFERENCES public.football_clubs(id);


--
-- TOC entry 2705 (class 2606 OID 24676)
-- Name: trophie club_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trophie
    ADD CONSTRAINT club_id FOREIGN KEY (club_id) REFERENCES public.football_clubs(id);


--
-- TOC entry 2706 (class 2606 OID 24681)
-- Name: trophie club_id_to_trophies; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trophie
    ADD CONSTRAINT club_id_to_trophies FOREIGN KEY (club_id) REFERENCES public.football_clubs(id);


--
-- TOC entry 2707 (class 2606 OID 24751)
-- Name: stadium stad_to_club; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stad_to_club FOREIGN KEY (club_id) REFERENCES public.football_clubs(id);


-- Completed on 2018-09-06 16:52:04

--
-- PostgreSQL database dump complete
--

