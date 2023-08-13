-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by khanakia at 13-08-2023 15:09.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE public.brands
DROP TABLE IF EXISTS public.brands CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.brands (
	id bigint DEFAULT nextval('brands_id_seq'::regclass) NOT NULL,
	name character varying(255) NOT NULL,
	status boolean DEFAULT true NOT NULL,
	created_at timestamp(0) without time zone,
	updated_at timestamp(0) without time zone,
	PRIMARY KEY(id)
);

COMMIT;

-- Table public.brands contains no data. No inserts have been genrated.
-- Inserting 0 rows into public.brands


-- END TABLE public.brands

-- BEGIN TABLE public.failed_jobs
DROP TABLE IF EXISTS public.failed_jobs CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.failed_jobs (
	id bigint DEFAULT nextval('failed_jobs_id_seq'::regclass) NOT NULL,
	uuid character varying(255) NOT NULL,
	"connection" text NOT NULL,
	queue text NOT NULL,
	payload text NOT NULL,
	"exception" text NOT NULL,
	failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY(id)
);

COMMIT;

-- Table public.failed_jobs contains no data. No inserts have been genrated.
-- Inserting 0 rows into public.failed_jobs


-- END TABLE public.failed_jobs

-- BEGIN TABLE public.items
DROP TABLE IF EXISTS public.items CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.items (
	id bigint DEFAULT nextval('items_id_seq'::regclass) NOT NULL,
	name character varying(255),
	brand_id bigint,
	created_at timestamp(0) without time zone,
	updated_at timestamp(0) without time zone,
	PRIMARY KEY(id)
);

COMMIT;

-- Inserting 2 rows into public.items
-- Insert batch #1
INSERT INTO public.items (id, name, brand_id, created_at, updated_at) VALUES
(1, 'Programming Languages', NULL, '2023-08-13 09:38:11', '2023-08-13 09:38:11'),
(2, 'Javascript', NULL, '2023-08-13 09:38:19', '2023-08-13 09:38:19');

-- END TABLE public.items

-- BEGIN TABLE public.migrations
DROP TABLE IF EXISTS public.migrations CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.migrations (
	id integer DEFAULT nextval('migrations_id_seq'::regclass) NOT NULL,
	migration character varying(255) NOT NULL,
	batch integer NOT NULL,
	PRIMARY KEY(id)
);

COMMIT;

-- Inserting 6 rows into public.migrations
-- Insert batch #1
INSERT INTO public.migrations (id, migration, batch) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_13_083238_create_items_table', 2),
(6, '2023_08_13_083242_create_brands_table', 2);

-- END TABLE public.migrations

-- BEGIN TABLE public.password_reset_tokens
DROP TABLE IF EXISTS public.password_reset_tokens CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.password_reset_tokens (
	email character varying(255) NOT NULL,
	token character varying(255) NOT NULL,
	created_at timestamp(0) without time zone,
	PRIMARY KEY(email)
);

COMMIT;

-- Table public.password_reset_tokens contains no data. No inserts have been genrated.
-- Inserting 0 rows into public.password_reset_tokens


-- END TABLE public.password_reset_tokens

-- BEGIN TABLE public.personal_access_tokens
DROP TABLE IF EXISTS public.personal_access_tokens CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.personal_access_tokens (
	id bigint DEFAULT nextval('personal_access_tokens_id_seq'::regclass) NOT NULL,
	tokenable_type character varying(255) NOT NULL,
	tokenable_id bigint NOT NULL,
	name character varying(255) NOT NULL,
	token character varying(64) NOT NULL,
	abilities text,
	last_used_at timestamp(0) without time zone,
	expires_at timestamp(0) without time zone,
	created_at timestamp(0) without time zone,
	updated_at timestamp(0) without time zone,
	PRIMARY KEY(id)
);

COMMIT;

-- Table public.personal_access_tokens contains no data. No inserts have been genrated.
-- Inserting 0 rows into public.personal_access_tokens


-- END TABLE public.personal_access_tokens

-- BEGIN TABLE public.users
DROP TABLE IF EXISTS public.users CASCADE;
BEGIN;

CREATE TABLE IF NOT EXISTS public.users (
	id bigint DEFAULT nextval('users_id_seq'::regclass) NOT NULL,
	name character varying(255) NOT NULL,
	email character varying(255) NOT NULL,
	email_verified_at timestamp(0) without time zone,
	"password" character varying(255) NOT NULL,
	remember_token character varying(100),
	created_at timestamp(0) without time zone,
	updated_at timestamp(0) without time zone,
	PRIMARY KEY(id)
);

COMMIT;

-- Inserting 1 row into public.users
-- Insert batch #1
INSERT INTO public.users (id, name, email, email_verified_at, "password", remember_token, created_at, updated_at) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$el7kiIsOC00UzmJk8Rx.eOxTf3cApxG7ms3RYIaBGv.kC20IVryEW', 'Et0Q6AUFWCctNhUfRLNRLntwCYETpUpudvEYzmytlRfM4CiDLyvKcYcK4rhb', '2023-08-13 09:37:49', '2023-08-13 09:37:49');

-- END TABLE public.users

