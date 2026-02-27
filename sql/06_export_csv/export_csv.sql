COPY (
    SELECT * FROM profiloCompleto
    WHERE livello_criticita = 'Alta'
)
TO 'C:\export\servizi_critici.csv'
DELIMITER ','
CSV HEADER;
