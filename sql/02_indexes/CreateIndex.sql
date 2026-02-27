CREATE INDEX idx_asset_responsabile
ON ASSET(id_responsabile);

CREATE INDEX idx_servizio_responsabile
ON SERVIZIO(id_responsabile);

CREATE INDEX idx_asv_servizio
ON ASSET_SERVIZIO(id_servizio);

CREATE INDEX idx_asv_asset
ON ASSET_SERVIZIO(id_asset);

CREATE INDEX idx_sf_servizio
ON SERVIZIO_FORNITORE(id_servizio);

CREATE INDEX idx_sf_fornitore
ON SERVIZIO_FORNITORE(id_fornitore);

CREATE INDEX idx_servizio_nome
ON SERVIZIO(nome);
