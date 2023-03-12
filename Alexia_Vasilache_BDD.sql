--------------------------------------------------------
--  DDL for Table LOCATII
--------------------------------------------------------

  CREATE TABLE "LOCATII" 
   (	"ID_LOCATIE" NUMBER(4,0), 
	"DENUMIRE_LOCATIE" VARCHAR2(70 BYTE), 
	"STRADA" VARCHAR2(70 BYTE), 
	"ORAS" VARCHAR2(40 BYTE), 
	"TARA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008311
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008311" ON "LOCATII" ("ID_LOCATIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table LOCATII
--------------------------------------------------------

  ALTER TABLE "LOCATII" MODIFY ("DENUMIRE_LOCATIE" NOT NULL ENABLE);
  ALTER TABLE "LOCATII" MODIFY ("STRADA" NOT NULL ENABLE);
  ALTER TABLE "LOCATII" MODIFY ("ORAS" NOT NULL ENABLE);
  ALTER TABLE "LOCATII" MODIFY ("TARA" NOT NULL ENABLE);
  ALTER TABLE "LOCATII" ADD PRIMARY KEY ("ID_LOCATIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
------------------------------------------------------------  

--------------------------------------------------------
--  DDL for Table DEPARTAMENTE
--------------------------------------------------------

  CREATE TABLE "DEPARTAMENTE" 
   (	"NUMAR_DEPARTAMENT" NUMBER(4,0), 
	"DENUMIRE_DEPARTAMENT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  --------------------------------------------------------
--  DDL for Index SYS_C008238
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008238" ON "DEPARTAMENTE" ("NUMAR_DEPARTAMENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DEPARTAMENTE
--------------------------------------------------------

  ALTER TABLE "DEPARTAMENTE" MODIFY ("DENUMIRE_DEPARTAMENT" NOT NULL ENABLE);
  ALTER TABLE "DEPARTAMENTE" ADD PRIMARY KEY ("NUMAR_DEPARTAMENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table ANGAJATI
--------------------------------------------------------

  CREATE TABLE "ANGAJATI" 
   (	"ID_ANGAJAT" NUMBER(4,0), 
	"ID_LOCATIE" NUMBER(4,0), 
	"NUMAR_DEPARTAMENT" NUMBER(4,0), 
	"FUNCTIE" VARCHAR2(80 BYTE), 
	"NUME" VARCHAR2(20 BYTE), 
	"PRENUME" VARCHAR2(20 BYTE), 
	"SALARIU" NUMBER(4,0), 
	"DATA_ANGAJARII" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  
--------------------------------------------------------
--  DDL for Index SYS_C008320
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008320" ON "ANGAJATI" ("ID_ANGAJAT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ANGAJATI
--------------------------------------------------------

  ALTER TABLE "ANGAJATI" MODIFY ("ID_LOCATIE" NOT NULL ENABLE);
  ALTER TABLE "ANGAJATI" MODIFY ("NUMAR_DEPARTAMENT" NOT NULL ENABLE);
  ALTER TABLE "ANGAJATI" MODIFY ("FUNCTIE" NOT NULL ENABLE);
  ALTER TABLE "ANGAJATI" MODIFY ("NUME" NOT NULL ENABLE);
  ALTER TABLE "ANGAJATI" MODIFY ("PRENUME" NOT NULL ENABLE);
  ALTER TABLE "ANGAJATI" MODIFY ("SALARIU" NOT NULL ENABLE);
  ALTER TABLE "ANGAJATI" MODIFY ("DATA_ANGAJARII" DEFAULT SYSDATE);
  ALTER TABLE "ANGAJATI" ADD PRIMARY KEY ("ID_ANGAJAT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ANGAJATI
--------------------------------------------------------

  ALTER TABLE "ANGAJATI" ADD CONSTRAINT "FK_DEP_ANG" FOREIGN KEY ("NUMAR_DEPARTAMENT")
	  REFERENCES "DEPARTAMENTE" ("NUMAR_DEPARTAMENT") ON DELETE SET NULL ENABLE;
  ALTER TABLE "ANGAJATI" ADD CONSTRAINT "FK_LOC_ANG" FOREIGN KEY ("ID_LOCATIE")
	  REFERENCES "LOCATII" ("ID_LOCATIE") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Table CLIENTI
--------------------------------------------------------

  CREATE TABLE "CLIENTI" 
   (	"IDENTIFICATOR_CLIENT" VARCHAR2(10 BYTE), 
	"ID_CLIENT" NUMBER(4,0), 
	"NUME" VARCHAR2(20 BYTE), 
	"PRENUME" VARCHAR2(20 BYTE), 
	"DATA_INSCRIERII" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008333
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008333" ON "CLIENTI" ("IDENTIFICATOR_CLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008334
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008334" ON "CLIENTI" ("ID_CLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CLIENTI
--------------------------------------------------------

  ALTER TABLE "CLIENTI" MODIFY ("ID_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "CLIENTI" MODIFY ("NUME" NOT NULL ENABLE);
  ALTER TABLE "CLIENTI" MODIFY ("PRENUME" NOT NULL ENABLE);
  ALTER TABLE "CLIENTI" ADD PRIMARY KEY ("IDENTIFICATOR_CLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CLIENTI" ADD UNIQUE ("ID_CLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;

--------------------------------------------------------
--  DDL for Table FURNIZORI
--------------------------------------------------------

  CREATE TABLE "FURNIZORI" 
   (	"NUME_FURNIZOR" VARCHAR2(50 BYTE), 
	"DATA_CONTRACT" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008230
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008230" ON "FURNIZORI" ("NUME_FURNIZOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FURNIZORI
--------------------------------------------------------

  ALTER TABLE "FURNIZORI" ADD PRIMARY KEY ("NUME_FURNIZOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  DDL for Table PRODUSE
--------------------------------------------------------

  CREATE TABLE "PRODUSE" 
   (	"ID_PRODUS" NUMBER(4,0), 
	"NUME_FURNIZOR" VARCHAR2(50 BYTE), 
	"PRET_PRODUS" NUMBER(4,0), 
	"DENUMIRE_PRODUS" VARCHAR2(50 BYTE), 
	"TIP_PRODUS" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008293
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008293" ON "PRODUSE" ("ID_PRODUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PRODUSE
--------------------------------------------------------

  ALTER TABLE "PRODUSE" MODIFY ("NUME_FURNIZOR" NOT NULL ENABLE);
  ALTER TABLE "PRODUSE" MODIFY ("PRET_PRODUS" NOT NULL ENABLE);
  ALTER TABLE "PRODUSE" MODIFY ("DENUMIRE_PRODUS" NOT NULL ENABLE);
  ALTER TABLE "PRODUSE" MODIFY ("TIP_PRODUS" NOT NULL ENABLE);
  ALTER TABLE "PRODUSE" ADD PRIMARY KEY ("ID_PRODUS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUSE
--------------------------------------------------------

  ALTER TABLE "PRODUSE" ADD CONSTRAINT "FK_FURN_PROD" FOREIGN KEY ("NUME_FURNIZOR")
	  REFERENCES "FURNIZORI" ("NUME_FURNIZOR") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Table TRANZACTII
--------------------------------------------------------

  CREATE TABLE "TRANZACTII" 
   (	"ID_TRANZACTIE" NUMBER(4,0), 
	"ID_CLIENT" NUMBER(4,0), 
	"ID_ANGAJAT" NUMBER(4,0), 
	"DATA_TRANZACTIEI" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008338
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008338" ON "TRANZACTII" ("ID_TRANZACTIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TRANZACTII
--------------------------------------------------------

  ALTER TABLE "TRANZACTII" MODIFY ("ID_ANGAJAT" NOT NULL ENABLE);
  ALTER TABLE "TRANZACTII" MODIFY ("DATA_TRANZACTIEI" NOT NULL ENABLE);
  ALTER TABLE "TRANZACTII" MODIFY ("DATA_TRANZACTIEI" DEFAULT SYSDATE);
  ALTER TABLE "TRANZACTII" ADD PRIMARY KEY ("ID_TRANZACTIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANZACTII
--------------------------------------------------------

  ALTER TABLE "TRANZACTII" ADD CONSTRAINT "FK_CL_TRANZ" FOREIGN KEY ("ID_CLIENT")
	  REFERENCES "CLIENTI" ("ID_CLIENT") ON DELETE SET NULL ENABLE;
  ALTER TABLE "TRANZACTII" ADD CONSTRAINT "FK_ANG_TRANZ" FOREIGN KEY ("ID_ANGAJAT")
	  REFERENCES "ANGAJATI" ("ID_ANGAJAT") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  DDL for Table DETALII_TRANZACTII
--------------------------------------------------------

  CREATE TABLE "DETALII_TRANZACTII" 
   (	"IDENTIFICATOR" NUMBER(4,0), 
	"ID_TRANZACTIE" NUMBER(4,0), 
	"ID_PRODUS" NUMBER(4,0), 
	"CANTITATE" NUMBER(4,0), 
	"PRET" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008346
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008346" ON "DETALII_TRANZACTII" ("IDENTIFICATOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DETALII_TRANZACTII
--------------------------------------------------------

  ALTER TABLE "DETALII_TRANZACTII" MODIFY ("ID_TRANZACTIE" NOT NULL ENABLE);
  ALTER TABLE "DETALII_TRANZACTII" MODIFY ("ID_PRODUS" NOT NULL ENABLE);
  ALTER TABLE "DETALII_TRANZACTII" ADD PRIMARY KEY ("IDENTIFICATOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALII_TRANZACTII
--------------------------------------------------------

  ALTER TABLE "DETALII_TRANZACTII" ADD CONSTRAINT "FK_PROD_TRANZ" FOREIGN KEY ("ID_PRODUS")
	  REFERENCES "PRODUSE" ("ID_PRODUS") ON DELETE SET NULL ENABLE;
  ALTER TABLE "DETALII_TRANZACTII" ADD CONSTRAINT "FK_TRANZ_DET" FOREIGN KEY ("ID_TRANZACTIE")
	  REFERENCES "TRANZACTII" ("ID_TRANZACTIE") ON DELETE CASCADE ENABLE;


REM INSERTING into LOCATII
SET DEFINE OFF;
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (1,'InLibroVeritas Piata Romana','Strada Stanislav Cihoschi, nr 5','Bucuresti','Romania');
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (2,'InLibroVeritas Ateneu','Strada Episcopiei, nr 10','Bucuresti','Romania');
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (3,'InLibroVeritas Aviatorilor','Strada Helesteului, nr 50','Bucuresti','Romania');
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (4,'InLibroVeritas Piata Muncii','Strada Teleajen, nr 82','Bucuresti','Romania');
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (5,'InLibroVeritas Grozavesti','Soseaua Orhideelor, nr 70','Bucuresti','Romania');
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (6,'InLibroVeritas Constanta','Bulevardul Dacia, nr 49','Constanta','Romania');
Insert into LOCATII (ID_LOCATIE,DENUMIRE_LOCATIE,STRADA,ORAS,TARA) values (7,'InLibroVeritas Pitesti','Bulevardul Nicolae Balcescu 109','Pitesti','Romania');

REM INSERTING into DEPARTAMENTE
Insert into DEPARTAMENTE (NUMAR_DEPARTAMENT,DENUMIRE_DEPARTAMENT) values (1,'Vanzari');
Insert into DEPARTAMENTE (NUMAR_DEPARTAMENT,DENUMIRE_DEPARTAMENT) values (2,'Contabilitate');
Insert into DEPARTAMENTE (NUMAR_DEPARTAMENT,DENUMIRE_DEPARTAMENT) values (3,'Resurse Umane');
Insert into DEPARTAMENTE (NUMAR_DEPARTAMENT,DENUMIRE_DEPARTAMENT) values (4,'Publicitate');
Insert into DEPARTAMENTE (NUMAR_DEPARTAMENT,DENUMIRE_DEPARTAMENT) values (5,'Relatii cu clientii');
Insert into DEPARTAMENTE (NUMAR_DEPARTAMENT,DENUMIRE_DEPARTAMENT) values (6,'Management');

REM INSERTING into ANGAJATI

Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (1,1,1,'Vanzator','Ionescu','Alex',2500,to_date('09-AUG-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (2,1,1,'Asistent vanzator','Popescu','Bogdan',2000,to_date('10-NOV-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (3,1,2,'Contabil','Nemteanu','Camelia',4500,to_date('08-OCT-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (4,1,6,'Manager magazin','Ion','Vlad',6000,to_date('09-AUG-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (5,2,1,'Vanzator','Plescan','Tiberiu',2500,to_date('07-AUG-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (6,2,3,'Junior HR Specialist','Nimirceag','Anastasia',5000,to_date('10-SEP-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (7,2,3,'Consultant Resurse Umane','Voiculescu','Irina',4500,to_date('11-SEP-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (8,2,6,'Manager Magazin','Titulescu','Cosmin',6000,to_date('07-AUG-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (9,3,1,'Vanzator','Gigescu','Cornel',4000,to_date('07-JUL-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (10,3,2,'Junior Contabil','Popescu','Irina',4200,to_date('08-OCT-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (11,3,6,'Manager Magazin','Encica','Camelia',6000,to_date('07-JUL-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (12,4,1,'Vanzator','Milos','Constantin',3500,to_date('10-NOV-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (13,4,4,'Social Media Specialist','Baraitaru','Paul',4000,to_date('06-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (14,4,5,'Consultant Relatii Clienti','Avram','Mihaela',4500,to_date('15-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (15,4,6,'Manager Magazin','Ionescu','Iulia',6000,to_date('10-NOV-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (16,4,3,'Consultant Resurse Umane','Ionescu','Vasile',5000,to_date('15-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (17,5,1,'Vanzator','Manescu','Ciprian',3500,to_date('08-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (18,5,2,'Contabil','Andronic','Paula',4500,to_date('10-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (19,5,4,'Social Media Specialist','David','Ioana',4300,to_date('20-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (20,5,5,'Manager Relatii Clienti','Dinca','Bianca',5000,to_date('22-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (21,5,6,'Manager Magazin','Nemteanu','David',6000,to_date('08-DEC-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (22,6,1,'Vanzator','Dobrescu','Camil',3500,to_date('07-SEP-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (23,6,3,'Senior HR Specialist','Ion','Vlad',4500,to_date('15-OCT-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (24,6,2,'Senior Contabil','Marinescu','Alexandra',5000,to_date('16-OCT-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (25,6,6,'Manager Magazin','Munteanu','Valeria',6000,to_date('06-SEP-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (26,7,1,'Vanzator','Craciun','Alexandru',4000,to_date('12-NOV-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (27,7,4,'Marketing Specialist','Coman','Bogdan',4500,to_date('20-NOV-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (28,7,5,'Consultant Relatii Clienti','Voiculescu','Roxana',5000,to_date('22-NOV-22','DD-MON-RR'));
Insert into ANGAJATI (ID_ANGAJAT,ID_LOCATIE,NUMAR_DEPARTAMENT,FUNCTIE,NUME,PRENUME,SALARIU,DATA_ANGAJARII) values (29,7,6,'Manager General','Teres','Bogdan',7500,to_date('10-NOV-22','DD-MON-RR'));

REM INSERTING into CLIENTI

Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('NA1',1,'Nicorescu','Andra',to_date('07-OCT-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('PI2',2,'Popescu','Ioana',to_date('09-AUG-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('VB3',3,'Vlad','Bogdan',to_date('09-SEP-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('IA4',4,'Irimia','Andreea',to_date('07-NOV-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('VC5',5,'Voiculescu','Cristian',to_date('20-SEP-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('MI6',6,'Marinescu','Iulia',to_date('10-OCT-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('PI7',7,'Paraschiv','Ionut',to_date('08-SEP-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('BI8',8,'Banica','Ioana',to_date('09-DEC-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('AL9',9,'Avasileoaiei','Leonard',to_date('10-AUG-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('VC10',10,'Voiculescu','Corina',to_date('20-AUG-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('GM11',11,'Georgescu','Mirabela',to_date('01-SEP-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('DM12',12,'Dobrescu','Marcel',to_date('22-AUG-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('NI13',13,'Nimirceag','Ioana',to_date('15-OCT-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('IG14',14,'Ionescu','Georgeta',to_date('31-AUG-22','DD-MON-RR'));
Insert into CLIENTI (IDENTIFICATOR_CLIENT,ID_CLIENT,NUME,PRENUME,DATA_INSCRIERII) values ('MV15',15,'Mesaru','Viorel',to_date('20-SEP-22','DD-MON-RR'));

REM INSERTING into FURNIZORI

Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('Editura Armonia',to_date('15-MAY-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('Omnia Partners',to_date('04-SEP-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('Cassile International',to_date('02-OCT-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('Esoteris',to_date('04-SEP-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('Editura Crisan',to_date('04-NOV-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('SC Contag',to_date('07-DEC-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('SC Glissando',to_date('09-JUL-22','DD-MON-RR'));
Insert into FURNIZORI (NUME_FURNIZOR,DATA_CONTRACT) values ('SC Todo Team',to_date('11-OCT-22','DD-MON-RR'));

REM INSERTING into PRODUSE

Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (1,'Editura Armonia',15,'Harry Potter','Carte de fictiune');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (2,'Editura Armonia',20,'Basmele copilariei','Carte pentru copii');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (3,'Omnia Partners',17,'Astrologia pe intelesul tuturor','Carte educativa');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (4,'Omnia Partners',18,'Secretele succesului','Carte de dezvoltare personala');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (5,'Omnia Partners',25,'Vindecarea copilului interior','Carte de dezvoltare personala');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (6,'Cassile International',5,'Pix cu gel','Pix');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (7,'Cassile International',8,'Caiet cu 100 de foi','Caiet de matematica');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (8,'Cassile International',10,'Caiet cu 80 de foi','Caiet dictando');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (9,'Esoteris',20,'Cheia catre propriul eu','Carte de psihologie');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (10,'Esoteris',25,'Hercolubus of Red Planet','Carte despre stiintele oculte');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (11,'Esoteris',23,'Scurta istorie a timpului','Carte despre stiinta');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (12,'Editura Crisan',5,'Caiet cu 50 de foi','Caiet de matematica');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (13,'Editura Crisan',8,'Stilou rosu','Stilou');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (14,'SC Contag',5,'Radiera in forma de stea','Radiera');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (15,'SC Contag',17,'Hartie milimetrica','Papetarie');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (16,'SC Contag',10,'Etichete pentru caiete','Etichete');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (17,'SC Glissando',14,'Hotul de carti','Carte de ficitiune');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (18,'SC Glissando',18,'Oamenii fericiti citesc si beau','Carte de ficitiune');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (19,'SC Glissando',20,'Inainte sa te cunosc','Carte de ficitiune');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (20,'SC Glissando',21,'Layla','Carte de ficitiune');
Insert into PRODUSE (ID_PRODUS,NUME_FURNIZOR,PRET_PRODUS,DENUMIRE_PRODUS,TIP_PRODUS) values (21,'SC Todo Team',14,'Verity','Carte straina');

REM INSERTING into TRANZACTII
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (1,null,1,to_date('07-SEP-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (2,1,1,to_date('07-OCT-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (3,1,2,to_date('07-DEC-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (4,2,5,to_date('09-AUG-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (5,3,9,to_date('09-SEP-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (6,4,12,to_date('11-OCT-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (7,5,17,to_date('10-DEC-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (8,6,22,to_date('13-OCT-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (9,7,26,to_date('15-NOV-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (10,8,2,to_date('24-DEC-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (11,9,5,to_date('12-AUG-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (12,10,9,to_date('31-AUG-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (13,11,9,to_date('02-SEP-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (14,12,26,to_date('19-DEC-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (15,13,26,to_date('17-NOV-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (16,14,22,to_date('22-SEP-22','DD-MON-RR'));
Insert into TRANZACTII (ID_TRANZACTIE,ID_CLIENT,ID_ANGAJAT,DATA_TRANZACTIEI) values (17,15,1,to_date('03-DEC-22','DD-MON-RR'));

REM INSERTING into DETALII_TRANZACTII

Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (11,1,1,2,15);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (12,1,2,2,20);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (23,2,3,1,17);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (34,3,4,2,18);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (44,4,4,3,18);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (45,4,5,1,25);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (56,5,6,2,5);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (69,6,9,5,20);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (710,7,10,2,25);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (89,8,9,6,20);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (92,9,2,5,20);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1011,10,11,1,23);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (114,11,4,2,18);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1214,12,14,4,5);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1311,13,11,2,23);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1415,14,15,4,17);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1512,15,12,2,5);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1615,16,15,2,17);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1710,17,10,2,25);
Insert into DETALII_TRANZACTII (IDENTIFICATOR,ID_TRANZACTIE,ID_PRODUS,CANTITATE,PRET) values (1720,17,20,2,21);      
      
CREATE OR REPLACE VIEW V_TRANZACTII AS 
 select  
        ang.id_angajat,
        ang.nume as Nume_Angajat,
        ang.prenume as Prenume_Angajat,
        tra.id_tranzactie,
        tra.id_client,
        tra.data_tranzactiei,
        sum(det.pret*det.cantitate) as Total,
        CASE WHEN cli.nume IS NULL THEN 'NEINREGISTRAT' ELSE cli.nume END as Nume_Client,
        CASE WHEN cli.prenume IS NULL THEN 'NEINREGISTRAT' ELSE cli.prenume END as Prenume_Client
        from tranzactii tra
inner join angajati ang on
ang.id_angajat = tra.id_angajat
inner join detalii_tranzactii det ON
tra.id_tranzactie = det.id_tranzactie
inner join produse prod on 
det.id_produs = prod.id_produs
left join clienti cli on
tra.id_client = cli.id_client
group by tra.id_tranzactie, tra.id_client,
        tra.data_tranzactiei,cli.nume,cli.prenume,
        ang.nume,ang.prenume,ang.id_angajat
order by data_tranzactiei desc;


CREATE OR REPLACE VIEW V_FURNIZORI AS  SELECT nume_furnizor, data_contract FROM FURNIZORI;