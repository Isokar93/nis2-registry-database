-- =====================================================
-- Tabella di storico per ASSET
-- =====================================================

CREATE TABLE IF NOT EXISTS ASSET_STORICO (
    id_asset        INTEGER,
    nome            VARCHAR(100),
    tipo            VARCHAR(50),
    criticita       VARCHAR(20),
    data_modifica   TIMESTAMP NOT NULL,
    tipo_operazione VARCHAR(10) NOT NULL
);

-- =====================================================
-- Funzione di versioning
-- =====================================================

CREATE OR REPLACE FUNCTION fn_asset_versioning()
RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO ASSET_STORICO (
        id_asset,
        nome,
        tipo,
        criticita,
        data_modifica,
        tipo_operazione
    )
    VALUES (
        OLD.id_asset,
        OLD.nome,
        OLD.tipo,
        OLD.criticita,
        CURRENT_TIMESTAMP,
        TG_OP
    );

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- =====================================================
-- Trigger associato alla tabella ASSET
-- =====================================================

CREATE TRIGGER trg_asset_versioning
BEFORE UPDATE OR DELETE
ON ASSET
FOR EACH ROW
EXECUTE FUNCTION fn_asset_versioning();
