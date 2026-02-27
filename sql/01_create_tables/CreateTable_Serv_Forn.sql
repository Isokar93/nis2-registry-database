CREATE TABLE SERVIZIO_FORNITORE (
    id_servizio  INTEGER NOT NULL,
    id_fornitore INTEGER NOT NULL,

    PRIMARY KEY (id_servizio, id_fornitore),

    CONSTRAINT fk_sf_servizio
        FOREIGN KEY (id_servizio)
        REFERENCES SERVIZIO(id_servizio),

    CONSTRAINT fk_sf_fornitore
        FOREIGN KEY (id_fornitore)
        REFERENCES 
