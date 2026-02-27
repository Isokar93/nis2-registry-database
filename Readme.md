# Registry Database Project

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

nis2-registry-db/
│
├── sql/
│ ├── 01_create_tables.sql
│ ├── 02_indexes.sql
│ ├── 03_versioning.sql
│ ├── 04_insert_data.sql
│ ├── 05_views.sql
│ └── 06_export_csv.sql
│
└── batch/
  ├── export_nis2.bat

La suddivisione modulare consente una chiara separazione tra definizione dello schema, ottimizzazione, versioning, popolamento dati ed esportazione.

---

## Requisiti

- PostgreSQL 14 o superiore
- Client `psql` installato
- Permessi di scrittura sul percorso di export CSV
- Ambiente Windows per esecuzione script batch

---

## Ordine di esecuzione degli script

1. `01_create_tables` – Creazione tabelle e vincoli.
2. `02_indexes` – Creazione indici per ottimizzazione.
3. `03_versioning` – Implementazione storico e trigger.
4. `04_insert_data` – Popolamento dati di test.
5. `05_views` – Creazione vista `profilocompleto`.
6. `06_export_csv` – Esportazione CSV tramite comando COPY.

---

## Export CSV

L’esportazione avviene tramite interrogazione della vista `profilocompleto`.
Il comando `COPY` genera un file CSV nel percorso specificato all’interno dello script `06_export_csv.sql`.

---

## Automazione

La cartella `batch/` contiene script per l’esecuzione automatizzata:

- `export_nis2.bat` → ambiente Windows

Gli script consentono l’integrazione con sistemi di schedulazione

---

## Versioning

Il progetto include meccanismi di tracciamento delle modifiche tramite:

- Tabelle di storico
- Funzioni SQL
- Trigger automatici

Questo consente la conservazione delle modifiche ai fini di audit e controllo
