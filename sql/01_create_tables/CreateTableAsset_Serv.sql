CREATE TABLE ASSET_SERVIZIO (
    id_asset    INTEGER NOT NULL,
    id_servizio INTEGER NOT NULL,

    PRIMARY KEY (id_asset, id_servizio),

    CONSTRAINT fk_as_asset
        FOREIGN KEY (id_asset)
        REFERENCES ASSET(id_asset),

    CONSTRAINT fk_as_servizio
        FOREIGN KEY (id_servizio)
        REFERENCES SERVIZIO(id_servizio)
);
