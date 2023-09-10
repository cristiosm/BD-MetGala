CREATE TABLE EVENIMENT (
  editie_id NUMBER(6) PRIMARY KEY,
  tema VARCHAR2(50) NOT NULL,
  presedinte VARCHAR2(20) NOT NULL,
  host VARCHAR2(20) NOT NULL,
  sponsor VARCHAR2(20),
  ora TIMESTAMP NOT NULL,
  pret_invitatie NUMBER(10, 2) NOT NULL,
  data DATE NOT NULL);


CREATE TABLE CONTRACT (
  contract_id NUMBER(6) PRIMARY KEY,
  editie_id NUMBER(6) NOT NULL,
  nume_agentie VARCHAR2(50) NOT NULL,
  pret NUMBER(10, 2) NOT NULL,
  CONSTRAINT fk_contract_eveniment
    FOREIGN KEY (editie_id)
    REFERENCES EVENIMENT (editie_id)
);

CREATE TABLE FOTOGRAFI (
  fotograf_id NUMBER(6) PRIMARY KEY,
  contract_id NUMBER(6) NOT NULL,
  nume VARCHAR2(20),
  data_nastere DATE,
  CONSTRAINT fk_fotografi_contract
    FOREIGN KEY (contract_id)
    REFERENCES CONTRACT (contract_id)
);

CREATE TABLE REDACTIE (
  reporter_id NUMBER(6) PRIMARY KEY,
  contract_id NUMBER(6) NOT NULL,
  nume VARCHAR2(20),
  data_nastere DATE,
  CONSTRAINT fk_redactie_contract
    FOREIGN KEY (contract_id)
    REFERENCES CONTRACT (contract_id)
);

CREATE TABLE PAZA (
  paznic_id NUMBER(6) PRIMARY KEY,
  contract_id NUMBER(6) NOT NULL,
  nume VARCHAR2(20),
  data_nastere DATE,
  CONSTRAINT fk_paza_contract
    FOREIGN KEY (contract_id)
    REFERENCES CONTRACT (contract_id)
);

CREATE TABLE MASA (
  masa_id NUMBER(6) PRIMARY KEY,
  nr_locuri NUMBER(2) NOT NULL,
  fotograf_id NUMBER(6),
  paznic_id NUMBER(6),
  CONSTRAINT fk_masa_fotografi
    FOREIGN KEY (fotograf_id)
    REFERENCES FOTOGRAFI (fotograf_id),
  CONSTRAINT fk_masa_paza
    FOREIGN KEY (paznic_id)
    REFERENCES PAZA (paznic_id)
);

CREATE TABLE CELEBRITATE (
  celebritate_id NUMBER(6) PRIMARY KEY,
  nume VARCHAR2(20) NOT NULL,
  profesie VARCHAR2(20) NOT NULL,
  data_nastere DATE
);

CREATE TABLE INVITATI (
  invitat_id NUMBER(6) PRIMARY KEY,
  celebritate_id NUMBER(6) NOT NULL,
  masa_id NUMBER(6) NOT NULL,
  ora_redcarpet VARCHAR2(5) NOT NULL,
  fotograf_id NUMBER(6) NOT NULL,
  paznic_id NUMBER(6),
  CONSTRAINT fk_invitati_celebritate
    FOREIGN KEY (celebritate_id)
    REFERENCES CELEBRITATE (celebritate_id),
  CONSTRAINT fk_invitati_masa
    FOREIGN KEY (masa_id)
    REFERENCES MASA (masa_id),
  CONSTRAINT fk_invitati_fotografi
    FOREIGN KEY (fotograf_id)
    REFERENCES FOTOGRAFI (fotograf_id),
  CONSTRAINT fk_invitati_paza
    FOREIGN KEY (paznic_id)
    REFERENCES PAZA (paznic_id)
);

CREATE TABLE DESIGNER (
  designer_id NUMBER(6) PRIMARY KEY,
  celebritate_id NUMBER(6) NOT NULL,
  house VARCHAR2(20) NOT NULL,
  CONSTRAINT fk_designer_celebritate
    FOREIGN KEY (celebritate_id)
    REFERENCES CELEBRITATE (celebritate_id)
);

CREATE TABLE TINUTA (
  tinuta_id NUMBER(6) PRIMARY KEY,
  invitat_id NUMBER(6) NOT NULL,
  designer_id NUMBER(6) NOT NULL,
  descriere VARCHAR2(150) NOT NULL,
  CONSTRAINT fk_tinuta_invitati
    FOREIGN KEY (invitat_id)
    REFERENCES INVITATI (invitat_id),
  CONSTRAINT fk_tinuta_designer
    FOREIGN KEY (designer_id)
    REFERENCES DESIGNER (designer_id)
);

CREATE TABLE FOTOGRAFII (
  fotografie_id NUMBER(6) PRIMARY KEY,
  fotograf_id NUMBER(6),
  tinuta_id NUMBER(6) NOT NULL,
  CONSTRAINT fk_fotografii_fotografi
    FOREIGN KEY (fotograf_id)
    REFERENCES FOTOGRAFI (fotograf_id),
  CONSTRAINT fk_fotografii_tinuta
    FOREIGN KEY (tinuta_id)
    REFERENCES TINUTA (tinuta_id)
);

CREATE TABLE INTERVIU (
  interviu_id NUMBER(6) PRIMARY KEY,
  reporter_id NUMBER(6) NOT NULL,
  celebritate_id NUMBER(6) NOT NULL,
  FOREIGN KEY (reporter_id) REFERENCES REDACTIE(reporter_id)
);

CREATE TABLE ARTICOL (
  articol_id NUMBER(6) PRIMARY KEY,
  interviu_id NUMBER(6) NOT NULL,
  fotografie_id NUMBER(6) NOT NULL,
  nume_articol VARCHAR2(50),
  CONSTRAINT fk_articol_fotografii
    FOREIGN KEY (fotografie_id)
    REFERENCES FOTOGRAFII (fotografie_id)
);

CREATE TABLE PARTICIPARE (
  editie_id NUMBER(6),
  invitat_id NUMBER(6),
  CONSTRAINT FK_PARTICIPARE_EDITIE
    FOREIGN KEY (editie_id)
    REFERENCES EVENIMENT(editie_id),
  CONSTRAINT FK_PARTICIPARE_INVITAT
    FOREIGN KEY (invitat_id)
    REFERENCES INVITATI(invitat_id)
);

CREATE TABLE MEDIA (
    celebritate_id NUMBER(6),
    interviu_id NUMBER(6),
    articol_id NUMBER(6),
    PRIMARY KEY (celebritate_id, interviu_id, articol_id),
    FOREIGN KEY (celebritate_id) REFERENCES CELEBRITATE (celebritate_id),
    FOREIGN KEY (interviu_id) REFERENCES INTERVIU (interviu_id),
    FOREIGN KEY (articol_id) REFERENCES ARTICOL (articol_id)
);



