BEGIN;


CREATE TABLE IF NOT EXISTS public.aeroporto
(
    nome_aeroporto character varying(100) COLLATE pg_catalog."default" NOT NULL,
	destination character varying(100) COLLATE pg_catalog."default" NOT NULL,
	id_aeroporto serial NOT NULL,
    CONSTRAINT pk_arp_id_aeroporto PRIMARY KEY (id_aeroporto)
);

CREATE TABLE IF NOT EXISTS public.rota
(
    route character varying(100) COLLATE pg_catalog."default" NOT NULL,
	id_rota serial NOT NULL,
    CONSTRAINT pk_rt_id_rota PRIMARY KEY (id_rota)
);

CREATE TABLE IF NOT EXISTS public.voo
(
    airline character varying(100) COLLATE pg_catalog."default" NOT NULL,
	day_of_journey character varying(100) COLLATE pg_catalog."default" NOT NULL,
	month_of_journey character varying(100) COLLATE pg_catalog."default" NOT NULL,
	year_of_journey character varying(100) COLLATE pg_catalog."default" NOT NULL,
	dep_time character varying(100) COLLATE pg_catalog."default" NOT NULL,
	arrival_time character varying(100) COLLATE pg_catalog."default" NOT NULL,
	arrival_day character varying(100) COLLATE pg_catalog."default" NOT NULL,
	arrival_month character varying(100) COLLATE pg_catalog."default" NOT NULL,
	duration character varying(100) COLLATE pg_catalog."default" NOT NULL,
	total_stops character varying(100) COLLATE pg_catalog."default" NOT NULL,
	price integer NOT NULL,
	id_voo serial NOT NULL,
 	id_rota serial NOT NULL,
    CONSTRAINT pk_voo_id_voo PRIMARY KEY (id_voo)
);

CREATE TABLE IF NOT EXISTS public.informacao_adicional
(
    additional_info character varying(100) COLLATE pg_catalog."default" NOT NULL,
	id_info_adicional serial NOT NULL,
    CONSTRAINT pk_inf_id_info_adicional PRIMARY KEY (id_info_adicional),
    CONSTRAINT un_inf_additional_info UNIQUE (additional_info)
);

CREATE TABLE IF NOT EXISTS public.principal
(
    id_voo serial NOT NULL,
    id_info_adicional integer NOT NULL,
	id_aeroporto integer NOT NULL,
    CONSTRAINT un_prnc_id_voo UNIQUE (id_voo)
);

ALTER TABLE IF EXISTS public.voo
    ADD CONSTRAINT fk_voo_id_rota FOREIGN KEY (id_rota)
    REFERENCES public.rota (id_rota) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.principal
    ADD CONSTRAINT fk_prnc_id_voo FOREIGN KEY (id_voo)
    REFERENCES public.voo (id_voo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.principal
    ADD CONSTRAINT fk_prnc_id_info_adicional FOREIGN KEY (id_info_adicional)
    REFERENCES public.informacao_adicional (id_info_adicional) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.principal
    ADD CONSTRAINT fk_prnc_id_aeroporto FOREIGN KEY (id_aeroporto)
    REFERENCES public.aeroporto (id_aeroporto) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
END;