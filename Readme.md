# NIS2 Registry database
## Descrizione
Il presente progetto implementa un database relazionale finalizzato alla gestione strutturata delle informazioni richieste dalla direttiva NIS2.
L’obiettivo è fornire una base dati centralizzata per la catalogazione di:
- Asset 
- Servizi erogati
- Fornitori terzi
- Responsabilità organizzative
- Relazioni di dipendenza tra le entità
Il sistema integra meccanismi di versioning per la tracciabilità delle modifiche e consente l’estrazione automatizzata dei profili informativi in formato CSV.

---

## Struttura del progetto

```
nis2-registry-db/
├── sql/
│   ├── 01_create_tables/
│   ├── 02_indexes/
│   ├── 03_versioning/
│   ├── 04_insert_data/
│   ├── 05_views/
│   └── 06_export_csv/
│
├── batch/
│   └── export_nis2.bat
│
└── docs/
    └── E-R_diagram.png
```

La suddivisione modulare consente una chiara separazione tra:

- definizione dello schema
- ottimizzazione tramite indici
- gestione dello storico (versioning)
- popolamento dati
- creazione viste
- esportazione dei profili


Inoltre il sistema consente la conservazione dello storico delle variazioni ai fini di audit e tracciabilità.

---

## Requisiti

- PostgreSQL 14 o superiore
- Client `psql` installato
- Permessi di scrittura sul percorso di export CSV
- Ambiente Windows per esecuzione script batch

---

## Export CSV

L’esportazione avviene tramite interrogazione della vista profiloCompleto.
Il comando \copy, richiamato dallo script batch `export_nis2.bat`, genera un file CSV nel percorso locale (C:\export) chiamato profilo.csv




