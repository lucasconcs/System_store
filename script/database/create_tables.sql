-- Database: store
 -- DROP DATABASE store;
 
 CREATE DATABASE store
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE public.fornecedor
(
    id integer NOT NULL,
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    cnpj integer NOT NULL,
    endereco character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fornecedor_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fornecedor
    OWNER to postgres;

CREATE TABLE public.produto
(
    id integer NOT NULL,
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    quantidade integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    descricao character varying(100) COLLATE pg_catalog."default" NOT NULL,
    id_fornecedor integer,
    CONSTRAINT produto_pkey PRIMARY KEY (id),
    CONSTRAINT produto_id_fornecedor_fkey FOREIGN KEY (id_fornecedor)
        REFERENCES public.fornecedor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.produto
    OWNER to postgres;
