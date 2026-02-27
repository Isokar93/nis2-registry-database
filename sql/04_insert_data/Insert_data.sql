
-- =====================================================
-- Inserimento RESPONSABILI
-- =====================================================

INSERT INTO RESPONSABILE (id_responsabile, nome, ruolo, email)
VALUES 
(1, 'Mario Rossi', 'IT Security Manager', 'm.rossi@azienda.it'),
(2, 'Laura Bianchi', 'Responsabile Infrastrutture', 'l.bianchi@azienda.it');


-- =====================================================
-- Inserimento ASSET
-- =====================================================

INSERT INTO ASSET (id_asset, nome, tipo, criticita, id_responsabile)
VALUES
(1, 'Server DB Produzione', 'Server', 'Alta', 2),
(2, 'Firewall Perimetrale', 'Network Device', 'Alta', 2);


-- =====================================================
-- Inserimento SERVIZI
-- =====================================================

INSERT INTO SERVIZIO (id_servizio, nome, descrizione, livello_criticita, id_responsabile)
VALUES
(1, 'Gestione Dati Anagrafici',
 'Servizio per la gestione delle informazioni anagrafiche dei cittadini',
 'Alta',
 1);


-- =====================================================
-- Inserimento FORNITORI
-- =====================================================

INSERT INTO FORNITORE (id_fornitore, nome, tipo_servizio, contatto)
VALUES
(1, 'CloudProviderX', 'Servizi Cloud', 'support@cloudproviderx.com');


-- =====================================================
-- Relazioni ASSET_SERVIZIO
-- =====================================================

INSERT INTO ASSET_SERVIZIO (id_asset, id_servizio)
VALUES
(1, 1),
(2, 1);


-- =====================================================
-- Relazioni SERVIZIO_FORNITORE
-- =====================================================

INSERT INTO SERVIZIO_FORNITORE (id_servizio, id_fornitore)
VALUES
(1, 1);