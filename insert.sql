-- EVENIMENT
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Camp: Notes on Fashion', 'Anna Wintour', 'Lady Gaga', 'Gucci', '19:00', 50000, to_date('2019-05-06', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'In America: A Lexicon of Fashion', 'Anna Wintour', 'Timothée Chalamet', 'American Express', '18:30', 100000, to_date('2021-09-13', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'American Independence', 'Anna Wintour', 'Rihanna', 'Louis Vuitton', '19:30', 75000, to_date('2022-05-02', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Heavenly Bodies: Fashion and the Catholic', 'Anna Wintour', 'Katy Perry', 'Versace', '20:00', 80000, to_date('2018-05-07', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'China: Through the Looking Glass', 'Anna Wintour', 'Beyonce', 'Dolce & Gabbana', '19:30', 60000, to_date('2015-05-04', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Savage Beauty', 'Anna Wintour', 'Sarah Jessica Parker', 'Alexander McQueen', '18:30', 90000, to_date('2011-05-02', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Rei Kawakubo/Comme: Art of the In-Between', 'Anna Wintour', 'Pharrell Williams', 'Comme des Garçons', '19:00', 70000, to_date('2017-05-01', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Manus x Machina: Fashion in an Age of Technology', 'Anna Wintour', 'Taylor Swift', 'Chanel', '20:00', 85000, to_date('2016-05-02', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Punk: Chaos to Couture', 'Anna Wintour', 'Miley Cyrus', 'Marc Jacobs', '19:30', 55000, to_date('2013-05-06', 'YYYY-MM-DD'));
INSERT INTO EVENIMENT (editie_id, tema, presedinte, host, sponsor, ora, pret_invitatie, data)
VALUES (seq.nextval, 'Notes on "Camp"', 'Anna Wintour', 'Harry Styles', 'Gucci', '19:00', 50000, to_date('2019-05-06', 'YYYY-MM-DD'));
    
-- CONTRACT
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 100, 'Getty Images', 100000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 100, 'Harper''s Bazaar', 80000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 101, 'Patrick McMullan', 120000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 101, 'G4S Security', 90000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 102, 'Elle', 110000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 102, 'Securitas Security Services', 95000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 103, 'Allied Universal Security Services', 105000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 103, 'Fashion Photographers Association', 85000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 104, 'Blackwater Security', 75000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 104, 'The New York Times', 100000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 105, 'Blackwater Security Consulting', 95000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 105, 'The Guardian', 85000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 106, 'Getty Center', 105000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 106, 'Concert Security Services', 75000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 107, 'Harper''s Bazaar', 100000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 107, 'Pinkerton Security Services', 80000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 108, 'New York City Police Department', 110000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 108, 'The Metropolitan Opera', 90000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 109, 'Vanity Fair', 120000);
INSERT INTO CONTRACT (contract_id, editie_id, nume_agentie, pret)
VALUES (seq.nextval, 109, 'National Portrait Gallery', 95000);

-- FOTOGRAFI
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 100, 'Mario Testino', TO_DATE('30-10-1994', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 100, 'Annie Leibovitz', TO_DATE('02-10-1949', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 103, 'Patrick Demarchelier', TO_DATE('21-08-1999', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 103, 'Steven Meisel', TO_DATE('05-06-1994', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 103, 'Helmut Newton', TO_DATE('31-10-1999', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 105, 'Bruce Weber', TO_DATE('29-03-1946', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 105, 'Mert Alas', TO_DATE('23-02-1991', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 105, 'Marcus Piggott',null);
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 108, 'Peter Lindbergh', TO_DATE('23-11-1984', 'DD-MM-YYYY'));
INSERT INTO FOTOGRAFI (fotograf_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 108, 'Rankin',null);

-- REDACTIE
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 102, 'Robin Givhan', TO_DATE('11-04-1964', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 102, 'Grace Coddington', TO_DATE('20-04-1941', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 102, 'Carine Roitfeld', TO_DATE('19-09-1954', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 105, 'Edward Enninful', TO_DATE('22-02-1972', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 105, 'Alexandra Shulman', TO_DATE('13-11-1957', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 115, 'Hamish Bowles', TO_DATE('23-07-1963', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 115, 'Cathy Horyn', TO_DATE('18-08-1956', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 115, 'Suzy Menkes', TO_DATE('24-12-1943', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 119, 'Tonne Goodman', TO_DATE('12-12-1951', 'DD-MM-YYYY'));
INSERT INTO REDACTIE (reporter_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 119, 'Phoebe Philo', TO_DATE('01-01-1973', 'DD-MM-YYYY'));

-- PAZA
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 104, 'Karl', TO_DATE('02-09-1953', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 104, 'Mariano',null);
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 106, 'Angela',null);
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 106, 'Franco', TO_DATE('09-03-1965', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 107, 'Nadia', TO_DATE('17-06-1981', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 107, 'Rudolf', TO_DATE('05-11-1958', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 107, 'Isabella', TO_DATE('28-04-1972', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 109, 'Antonio', TO_DATE('11-08-1967', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 109, 'Simone', TO_DATE('03-02-1978', 'DD-MM-YYYY'));
INSERT INTO PAZA (paznic_id, contract_id, nume, data_nastere)
VALUES (seq.nextval, 109, 'Giovanna', TO_DATE('19-09-1963', 'DD-MM-YYYY'));


-- MASA
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 8, 103, 101);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 6, 102, 104);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 10, 101, 110);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 12, 104, 102);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 8, 109, 105);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 6, 106, 106);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 10, 107, 107);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 12, 105, 108);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 8, 109, 109);
INSERT INTO MASA (masa_id, nr_locuri, fotograf_id, paznic_id) VALUES (seq.nextval, 6, 100, 103);

-- CELEBRITATE
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Beyonce', 'Cantareata', TO_DATE('04-09-1981', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Rihanna', 'Cantareata', TO_DATE('20-02-1988', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Donatella Versace', 'Designer', TO_DATE('02-05-1955', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Lady Gaga', 'Cantareata', TO_DATE('28-03-1986', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Kim Kardashian', 'Personalitate TV', TO_DATE('21-10-1980', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Tom Ford', 'Designer', TO_DATE('27-08-1961', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Daniel Roseberry', 'Designer', TO_DATE('01-01-1986', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Brad Pitt', 'Actor', TO_DATE('18-12-1963', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Angelina Jolie', 'Actrita', TO_DATE('04-06-1975', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Leonardo DiCaprio', 'Actor', TO_DATE('11-11-1974', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Maria Grazia Chiuri', 'Designer', TO_DATE('01-08-1964', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Valentino Garavani', 'Designer', TO_DATE('11-05-1932', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Gigi Hadid', 'Model', TO_DATE('23-04-1995', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Kendall Jenner', 'Model', TO_DATE('03-11-1995', 'DD-MM-YYYY'));
INSERT INTO CELEBRITATE (celebritate_id, nume, profesie, data_nastere)
VALUES (seq.nextval, 'Tom Hiddleston', 'Actor', TO_DATE('09-02-1981', 'DD-MM-YYYY'));

-- DESIGNER
INSERT INTO DESIGNER (designer_id, celebritate_id, house) VALUES (seq.nextval, 107, 'Schiaparelli');
INSERT INTO DESIGNER (designer_id, celebritate_id, house) VALUES (seq.nextval, 106, 'Tom Ford');
INSERT INTO DESIGNER (designer_id, celebritate_id, house) VALUES (seq.nextval, 103, 'Versace');
INSERT INTO DESIGNER (designer_id, celebritate_id, house) VALUES (seq.nextval, 111, 'Dior');
INSERT INTO DESIGNER (designer_id, celebritate_id, house) VALUES (seq.nextval, 112, 'Valentino');

-- INVITATI
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 107, 100, '20:00', 102, 104);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 104, 101, '21:00', 101, 102);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 102, 107, '22:30', 105, 108);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 113, 102, '21:30', 108, 109);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 108, 103, '23:00', 106, 105);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 104, 106, '21:00', 102, 103);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 108, 104, '20:00', 107, 101);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 112, 104, '21:00', 109, 106);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 108, 105, '20:30', 103, 107);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 104, 105, '21:00', 102, 105);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 104, 109, '23:00', 102, 105);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 107, 108, '20:00', 107, 103);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 101, 109, '20:00', 103, 101);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 102, 105, '21:20', 107, 103);
INSERT INTO INVITATI (invitat_id, celebritate_id, masa_id, ora_redcarpet, fotograf_id, paznic_id)
VALUES (seq.nextval, 105, 103, '23:10', 109, 101);

-- PARTICIPARE
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (105, 110);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (101, 103);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (103, 106);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (106, 104);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (102, 114);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (105, 109);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (104, 108);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (106, 101);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (103, 102);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (107, 111);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (109, 113);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (105, 112);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (100, 107);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (108, 105);
INSERT INTO PARTICIPARE (editie_id, invitat_id) VALUES (102, 100);

-- INTERVIU
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 105);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 108);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 107);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 106);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 101);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 103);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 102);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 109);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 104);
INSERT INTO INTERVIU (interviu_id, reporter_id) VALUES (seq.nextval, 107);

-- TINUTA
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 105, 103, 'O tinuta formata dintr-un costum de pantaloni alb impecabil si o camasa albastra cu maneci lungi.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 102, 102, 'O rochie din matase in nuante pastel, cu o fusta usor clos si bretele subtiri.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 110, 104, 'O tinuta compusa dintr-un sacou negru elegant si o pereche de pantaloni cigarette, purtata cu stil minimalist.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 112, 101, 'O rochie cu imprimeu floral delicat si o croiala dreapta.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 113, 103, 'O tinuta casual-chic alcatuita dintr-un tricou alb simplu, o pereche de blugi si o jacheta din piele.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 114, 104, 'Un costum clasic, cu sacou bleumarin si pantaloni asortati.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 104, 102, 'O rochie cu o croiala asimetrica, cu umeri goi si un design modern.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 107, 101, 'O rochie in stil sirena, cu o croiala mulata.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 109, 104, 'O tinuta retro compusa dintr-o rochie in stil anii 50, cu imprimeu cu buline si o curea in talie.');
INSERT INTO TINUTA (tinuta_id, invitat_id, designer_id, descriere)
VALUES (seq.nextval, 111, 102, 'O combinatie nonconformista intre un sacou in carouri si o pereche de pantaloni cargo.');

-- FOTOGRAFII
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 105, 103);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 109, 102);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 104, 108);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 107, 100);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 103, 106);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 108, 101);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 102, 105);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 106, 109);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 101, 104);
INSERT INTO FOTOGRAFII (fotografie_id, fotograf_id, tinuta_id) VALUES (seq.nextval, 100, 107);

-- ARTICOL
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 104, 'Eleganta');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 100, 'O rochie desavarsita');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 103, 'Stralucire');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 108, 'Moda indrazneata');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 106, 'Minimalism elegant');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 101, 'Arta tesuta intr-o rochie');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 109, 'Opulenta extravaganta');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 105, 'Eleganta masculina');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 102, 'Arta intr-o rochie inovatoare');
INSERT INTO ARTICOL (articol_id, fotografie_id, nume_articol) VALUES (seq.nextval, 107, 'tinuta eclectica');

-- MEDIA
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (105, 103, 106);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (111, 102, 100);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (110, 109, 107);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (113, 105, 109);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (104, 108, 101);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (112, 107, 104);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (106, 104, 103);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (109, 102, 105);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (107, 100, 106);
INSERT INTO MEDIA (celebritate_id, interviu_id, articol_id) VALUES (100, 101, 108);














    
