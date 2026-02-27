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

La suddivisione modulare consente una chiara separazione tra definizione dello schema, ottimizzazione, versioning, popolamento dati ed esportazione.

---

## Requisiti

- PostgreSQL 14 o superiore
- Client `psql` installato
- Permessi di scrittura sul percorso di export CSV
- Ambiente Windows per esecuzione script batch

---

## Export CSV

L’esportazione avviene tramite interrogazione della vista `profilocompleto`.
Il comando `\copy` genera un file CSV nel percorso specificato all’interno dello script `06_export_csv`.

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

## Descrizione

Il presente progetto implementa un database relazionale finalizzato alla gestione strutturata delle informazioni richieste dalla direttiva NIS2.
L’obiettivo è fornire una base dati centralizzata per la catalogazione di:


- Asset 
- Servizi erogati
- Fornitori terzi
- Responsabilità organizzative
- Relazioni di dipendenza tra le entità

Il sistema integra meccanismi di versioning per la tracciabilità delle modifiche e consente l’estrazione automatizzata dei profili informativi in formato CSV.
