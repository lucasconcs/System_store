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
