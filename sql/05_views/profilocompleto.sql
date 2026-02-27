CREATE VIEW profiloCompleto AS
SELECT 
    s.nome AS servizio,
    s.livello_criticita,
    r.nome AS responsabile,
    a.nome AS asset,
    f.nome AS fornitore
FROM SERVIZIO s
JOIN RESPONSABILE r 
    ON s.id_responsabile = r.id_responsabile
LEFT JOIN ASSET_SERVIZIO asv 
    ON s.id_servizio = asv.id_servizio
LEFT JOIN ASSET a 
    ON asv.id_asset = a.id_asset
LEFT JOIN SERVIZIO_FORNITORE sf 
    ON s.id_servizio = sf.id_servizio
LEFT JOIN FORNITORE f 
    ON sf.id_fornitore = f.id_fornitore;
