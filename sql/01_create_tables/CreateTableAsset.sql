CREATE TABLE ASSET (
    id_asset        INTEGER PRIMARY KEY,
    nome            VARCHAR(100) NOT NULL,
    tipo            VARCHAR(50)  NOT NULL,
    criticita       VARCHAR(20)  NOT NULL,
    id_responsabile INTEGER      NOT NULL,

    CONSTRAINT fk_asset_responsabile
        FOREIGN KEY (id_responsabile)
        REFERENCES RESPONSABILE(id_responsabile)
);
