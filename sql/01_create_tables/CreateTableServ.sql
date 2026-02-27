CREATE TABLE SERVIZIO (
    id_servizio        INTEGER PRIMARY KEY,
    nome               VARCHAR(100) NOT NULL,
    descrizione        VARCHAR(255),
    livello_criticita  VARCHAR(20)  NOT NULL,
    id_responsabile    INTEGER      NOT NULL,

    CONSTRAINT fk_servizio_responsabile
        FOREIGN KEY (id_responsabile)
        REFERENCES RESPONSABILE(id_responsabile)
);
