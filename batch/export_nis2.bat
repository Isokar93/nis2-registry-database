@echo off

set PGPASSWORD=nis2admin
set PGPATH=C:\Program Files\PostgreSQL\18\bin

"%PGPATH%\psql.exe" -U postgres -d nis2_registry -c ^
"\copy (SELECT * FROM profiloCompleto WHERE livello_criticita = 'Alta') TO 'C:\temp\profilo.csv' WITH CSV HEADER DELIMITER ','"

echo Export completato: C:\temp\profilo.csv
pause