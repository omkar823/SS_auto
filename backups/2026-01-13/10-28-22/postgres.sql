--
-- PostgreSQL database cluster dump
--

\restrict o7P4aueAZuPAyqTvBZ6uoKEa4X0kb8BPLtn8DVYomKLoRvwbepIKUYPZIcUJpWq

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








\unrestrict o7P4aueAZuPAyqTvBZ6uoKEa4X0kb8BPLtn8DVYomKLoRvwbepIKUYPZIcUJpWq

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict 0FW9aHs7Nuafm4OblUoSMXrcUZBoHJLdq4HJNfc4otQAAc1CMAtQbJtTMynvivI

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

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

--
-- PostgreSQL database dump complete
--

\unrestrict 0FW9aHs7Nuafm4OblUoSMXrcUZBoHJLdq4HJNfc4otQAAc1CMAtQbJtTMynvivI

--
-- Database "employee_db" dump
--

--
-- PostgreSQL database dump
--

\restrict sMzJF3rvKXW8AfObky5Ej9pRNmlyNU19GI2gkCA2QL2GBleMJap6OqE3YBIBC21

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

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

--
-- Name: employee_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE employee_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';


ALTER DATABASE employee_db OWNER TO postgres;

\unrestrict sMzJF3rvKXW8AfObky5Ej9pRNmlyNU19GI2gkCA2QL2GBleMJap6OqE3YBIBC21
\connect employee_db
\restrict sMzJF3rvKXW8AfObky5Ej9pRNmlyNU19GI2gkCA2QL2GBleMJap6OqE3YBIBC21

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

--
-- PostgreSQL database dump complete
--

\unrestrict sMzJF3rvKXW8AfObky5Ej9pRNmlyNU19GI2gkCA2QL2GBleMJap6OqE3YBIBC21

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict 0DbjiMZ1yoBfRUHpMjXjHtPtcFjvHLXSX0TzbRF3z5cXOuDSzGcIa0WI67DiTym

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

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

--
-- PostgreSQL database dump complete
--

\unrestrict 0DbjiMZ1yoBfRUHpMjXjHtPtcFjvHLXSX0TzbRF3z5cXOuDSzGcIa0WI67DiTym

--
-- Database "sales_db" dump
--

--
-- PostgreSQL database dump
--

\restrict YnLl3aUcId0TaQ70lozr7CZeq1eg5FOqXxoxvcRX5QZrGWYeqaO1wwiu3MCA6Zz

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

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

--
-- Name: sales_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sales_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';


ALTER DATABASE sales_db OWNER TO postgres;

\unrestrict YnLl3aUcId0TaQ70lozr7CZeq1eg5FOqXxoxvcRX5QZrGWYeqaO1wwiu3MCA6Zz
\connect sales_db
\restrict YnLl3aUcId0TaQ70lozr7CZeq1eg5FOqXxoxvcRX5QZrGWYeqaO1wwiu3MCA6Zz

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

--
-- PostgreSQL database dump complete
--

\unrestrict YnLl3aUcId0TaQ70lozr7CZeq1eg5FOqXxoxvcRX5QZrGWYeqaO1wwiu3MCA6Zz

--
-- PostgreSQL database cluster dump complete
--

