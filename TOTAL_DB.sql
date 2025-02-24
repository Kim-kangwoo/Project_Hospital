--------------------------------------------------------
--  파일이 생성됨 - 금요일-2월-21-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BODY_CLASSIFICATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."BODY_CLASSIFICATION_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 21 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DISEASE_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."DISEASE_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 78 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DISEASE_CLASSIFICATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."DISEASE_CLASSIFICATION_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 30 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EXAMINATION_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."EXAMINATION_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 38 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HB_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."HB_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 48 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence OT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."OT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4341 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."QNA_ID_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 61 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECORD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."RECORD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REFERRAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."REFERRAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERV_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."RESERV_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 47 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REFERRAL
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."SEQ_REFERRAL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TIMETABLE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."TIMETABLE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 51 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_HOSPITAL"."USER_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 127 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."ADMIN" 
   (	"ADMIN_ID" VARCHAR2(50 BYTE), 
	"ADMIN_PW" VARCHAR2(50 BYTE), 
	"ADMIN_TYPE" VARCHAR2(30 BYTE), 
	"HP_ID" VARCHAR2(50 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"ADMIN_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BODY_CLASSIFICATION
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."BODY_CLASSIFICATION" 
   (	"BODY_PART_ID" VARCHAR2(50 BYTE), 
	"BODY_PART_NAME" VARCHAR2(30 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."DEPT" 
   (	"DEPT_ID" VARCHAR2(50 BYTE), 
	"DEPT_NAME" VARCHAR2(50 BYTE), 
	"DR_ID" VARCHAR2(50 BYTE), 
	"HP_ID" VARCHAR2(50 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"QUIT" CHAR(1 BYTE) DEFAULT 0, 
	"FILEONE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DISEASE_BOARD
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."DISEASE_BOARD" 
   (	"DISEASE_BOARD_ID" VARCHAR2(50 BYTE), 
	"DISEASE_PART_ID" VARCHAR2(50 BYTE), 
	"BODY_PART_ID" VARCHAR2(50 BYTE), 
	"DISEASE_NAME" VARCHAR2(100 BYTE), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"FILEONE" VARCHAR2(200 BYTE), 
	"BOARD_COUNT" NUMBER DEFAULT 0, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DISEASE_CLASSIFICATION
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."DISEASE_CLASSIFICATION" 
   (	"DISEASE_PART_ID" VARCHAR2(50 BYTE), 
	"DISEASE_PART_NAME" VARCHAR2(100 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EXAMINATION_BOARD
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."EXAMINATION_BOARD" 
   (	"EXAMINATION_ID" VARCHAR2(50 BYTE), 
	"BODY_PART_ID" VARCHAR2(50 BYTE), 
	"EXAMINATION_NAME" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"FILEONE" VARCHAR2(200 BYTE), 
	"BOARD_COUNT" NUMBER DEFAULT 0, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FILESTORE
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."FILESTORE" 
   (	"FILESTORE_ID" VARCHAR2(200 BYTE), 
	"ORIGINAL_NAME" VARCHAR2(1000 BYTE), 
	"FILE_PATH" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HEALTH_BOARD
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."HEALTH_BOARD" 
   (	"HB_ID" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"FILEONE" VARCHAR2(200 BYTE), 
	"BOARD_COUNT" NUMBER DEFAULT 0, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"CONTENT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HOSPITAL
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."HOSPITAL" 
   (	"HP_ID" VARCHAR2(50 BYTE), 
	"HP_NAME" VARCHAR2(40 BYTE), 
	"HP_ADDRESS" VARCHAR2(200 BYTE), 
	"HP_NUMBER" VARCHAR2(40 BYTE), 
	"HP_REGION" VARCHAR2(40 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"QUIT" CHAR(1 BYTE) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HP_MEMBER
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."HP_MEMBER" 
   (	"DR_ID" VARCHAR2(50 BYTE), 
	"DR_PW" VARCHAR2(50 BYTE), 
	"DEPT_ID" VARCHAR2(50 BYTE), 
	"DR_POSITION" VARCHAR2(30 BYTE), 
	"DR_NAME" VARCHAR2(30 BYTE), 
	"DR_PHONE_NUM" VARCHAR2(30 BYTE), 
	"DR_ADDRESS" VARCHAR2(200 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"DR_FIELD" VARCHAR2(1000 BYTE) DEFAULT '-', 
	"DR_EDUCATION" VARCHAR2(1000 BYTE) DEFAULT '-', 
	"DR_CAREER" VARCHAR2(1000 BYTE) DEFAULT '-', 
	"DR_ACADEMIC" VARCHAR2(1000 BYTE) DEFAULT '-', 
	"DR_AWARDS" VARCHAR2(1000 BYTE) DEFAULT '-', 
	"FILEONE" VARCHAR2(200 BYTE), 
	"FILETWO" VARCHAR2(200 BYTE), 
	"FILETHREE" VARCHAR2(200 BYTE), 
	"DR_PERSON_NUM" VARCHAR2(50 BYTE), 
	"QUIT" CHAR(1 BYTE) DEFAULT 0, 
	"RANK" NUMBER, 
	"HASH_PW" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OPENING_TIME
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."OPENING_TIME" 
   (	"OT_ID" VARCHAR2(50 BYTE), 
	"DR_ID" VARCHAR2(50 BYTE), 
	"TIMETYPE" VARCHAR2(50 BYTE), 
	"OT_STATE" VARCHAR2(40 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"YEAR_DATE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNA_BOARD
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."QNA_BOARD" 
   (	"QNA_ID" VARCHAR2(50 BYTE), 
	"USER_NUM" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"REPLY" VARCHAR2(4000 BYTE) DEFAULT '답변대기', 
	"REPLY_AT" TIMESTAMP (6), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"RELATION" VARCHAR2(50 BYTE), 
	"QNA_TYPE" VARCHAR2(50 BYTE), 
	"FILEONE" VARCHAR2(200 BYTE), 
	"FILETWO" VARCHAR2(200 BYTE), 
	"FILETHREE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RECORD
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."RECORD" 
   (	"RECORD_ID" VARCHAR2(50 BYTE), 
	"DR_ID" VARCHAR2(50 BYTE), 
	"USER_NUM" VARCHAR2(50 BYTE), 
	"RECORD_TYPE" VARCHAR2(50 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"COST" VARCHAR2(50 BYTE), 
	"TREATMENT_PERIOD" VARCHAR2(100 BYTE), 
	"RESERV_ID" VARCHAR2(50 BYTE) DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REFERRAL
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."REFERRAL" 
   (	"REFER_ID" VARCHAR2(50 BYTE), 
	"USER_NUM" VARCHAR2(50 BYTE), 
	"S_DR_ID" VARCHAR2(50 BYTE), 
	"REFER_CONTENT" VARCHAR2(2000 BYTE), 
	"RECEIVE_CHK" CHAR(1 BYTE) DEFAULT '1', 
	"R_DR_ID" VARCHAR2(50 BYTE), 
	"RESULT_CONTENT" VARCHAR2(2000 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"FILEONE" VARCHAR2(200 BYTE), 
	"FILETWO" VARCHAR2(200 BYTE), 
	"FILETHREE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."RESERVATION" 
   (	"RESERV_ID" VARCHAR2(50 BYTE), 
	"RESERV_CONTENT" VARCHAR2(500 BYTE), 
	"USER_NUM" VARCHAR2(50 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"OT_ID" VARCHAR2(50 BYTE), 
	"TIMETABLE_ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TIMETABLE
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."TIMETABLE" 
   (	"TIMETABLE_ID" VARCHAR2(50 BYTE), 
	"TIME" VARCHAR2(50 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"TIME_TYPE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USER_CLIENT
--------------------------------------------------------

  CREATE TABLE "PROJECT_HOSPITAL"."USER_CLIENT" 
   (	"USER_NUM" VARCHAR2(50 BYTE), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(30 BYTE), 
	"USER_PHONE_NUM" VARCHAR2(30 BYTE), 
	"USER_BIRTH" VARCHAR2(30 BYTE), 
	"USER_GENDER" VARCHAR2(1 BYTE), 
	"USER_ADDRESS" VARCHAR2(200 BYTE), 
	"USER_EMAIL" VARCHAR2(100 BYTE), 
	"SEND_STATE" VARCHAR2(1 BYTE), 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"UPDATED_AT" TIMESTAMP (6), 
	"FILEONE" VARCHAR2(200 BYTE), 
	"FILETWO" VARCHAR2(200 BYTE), 
	"FILETHREE" VARCHAR2(200 BYTE), 
	"GUARDIAN_NAME" VARCHAR2(30 BYTE), 
	"GUARDIAN_PHONE_NUM" VARCHAR2(30 BYTE), 
	"GUARDIAN_EMAIL" VARCHAR2(100 BYTE), 
	"QUIT" CHAR(1 BYTE) DEFAULT 0, 
	"USER_IMG" VARCHAR2(255 BYTE) DEFAULT '@profile_default'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View VW_ALLBOARD_DATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PROJECT_HOSPITAL"."VW_ALLBOARD_DATE" ("ALL_TIME") AS 
  SELECT CREATED_AT AS "ALL_TIME"
FROM QNA_BOARD
UNION ALL
SELECT CREATED_AT
FROM HEALTH_BOARD
UNION ALL
SELECT CREATED_AT
FROM DISEASE_BOARD
UNION ALL
SELECT CREATED_AT
FROM EXAMINATION_BOARD
WITH READ ONLY
;
REM INSERTING into PROJECT_HOSPITAL.ADMIN
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.ADMIN (ADMIN_ID,ADMIN_PW,ADMIN_TYPE,HP_ID,CREATED_AT,UPDATED_AT,ADMIN_NAME) values ('admin','admin','일반','SSW',to_timestamp('24/12/26 15:21:02.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/27 10:54:42.000000000','RR/MM/DD HH24:MI:SSXFF'),'관리자');
REM INSERTING into PROJECT_HOSPITAL.BODY_CLASSIFICATION
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('1','전신',to_timestamp('25/01/02 09:57:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('2','머리',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('3','정신',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('4','얼굴',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('5','목',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('6','가슴(심장,폐), 등',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/02 15:21:10.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('7','복부',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 14:57:01.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('8','생식, 비뇨기',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 14:57:16.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('9','팔, 손',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 14:57:24.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('10','다리, 발',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 14:57:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('11','뼈, 근육',to_timestamp('25/01/02 09:59:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 14:57:37.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.BODY_CLASSIFICATION (BODY_PART_ID,BODY_PART_NAME,CREATED_AT,UPDATED_AT) values ('14','피부',to_timestamp('25/01/02 18:00:49.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 14:57:45.000000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into PROJECT_HOSPITAL.DEPT
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWMG','내과','AN4','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:16:29.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWMG-3');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWGS','외과','GS6','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/18 17:32:13.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWGS-7');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWPD','소아청소년과','PD7','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:13:37.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWPD-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWOBGY','산부인과','OBGY13','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 11:57:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWOBGY-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWRD','영상의학과','RD5','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 14:51:04.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWRD-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWAN','마취통증의학과','AN47','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:12:42.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWAN-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWCP','진단검사의학과','CP11','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/15 15:36:53.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWCP-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWPC','정신건강의학과','PC10','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:14:22.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWPC-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWER','응급의학과','ER8','SSW',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:14:06.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWER-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWTEST','테스트과',null,'SSW',to_timestamp('25/01/16 16:11:10.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/16 18:11:06.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWSAM','샘플',null,'SSW',to_timestamp('25/01/17 10:21:19.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/17 10:22:31.000000000','RR/MM/DD HH24:MI:SSXFF'),'1','SWSAM-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWDE','치과','DE45','SSW',to_timestamp('25/02/03 20:12:16.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/03 20:33:07.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWDE-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST2','아이티',null,'SSW',to_timestamp('25/01/16 17:01:16.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:13:47.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST3','아이티윌과2',null,'SSW',to_timestamp('25/01/16 17:01:17.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:38.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST4','아이티윌과3',null,'SSW',to_timestamp('25/01/16 17:01:18.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:42.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST5','아이티윌과4',null,'SSW',to_timestamp('25/01/16 17:01:19.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:46.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST6','아이티윌과5',null,'SSW',to_timestamp('25/01/16 17:01:20.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:49.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST7','아이티윌과6',null,'SSW',to_timestamp('25/01/16 17:01:21.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST8','아이티윌과7',null,'SSW',to_timestamp('25/01/16 17:01:21.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:55.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST9','아이티윌과8',null,'SSW',to_timestamp('25/01/16 17:01:22.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:57:59.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('TEST10','아이티윌과9',null,'SSW',to_timestamp('25/01/16 17:01:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 09:58:02.000000000','RR/MM/DD HH24:MI:SSXFF'),'1',null);
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWMM','아무거나',null,'SSW',to_timestamp('25/01/16 17:24:26.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/16 20:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'),'1','SWMM-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWEY','안과','EY43','SSW',to_timestamp('25/02/03 20:03:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/03 20:19:35.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWEY-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWPA','병리과','PA44','SSW',to_timestamp('25/02/03 20:07:57.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/03 20:26:26.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWPA-1');
Insert into PROJECT_HOSPITAL.DEPT (DEPT_ID,DEPT_NAME,DR_ID,HP_ID,CREATED_AT,UPDATED_AT,QUIT,FILEONE) values ('SWDR','피부과','DR46','SSW',to_timestamp('25/02/03 20:38:09.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/03 21:00:05.000000000','RR/MM/DD HH24:MI:SSXFF'),'0','SWDR-1');
REM INSERTING into PROJECT_HOSPITAL.DISEASE_BOARD
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('1','2','6','폐색전증 [Pulmonary embolism]','폐색전증 [Pulmonary embolism]','									폐색전증이란?#폐색전증 또는 폐동맥색전증이란 혈전이 폐혈관으로 이동(색전)해 폐혈관의 흐름을 막아 적절한 혈액순환이 이루어지지 않는 질환입니다. 이로 인해 산소 교환이 원활하지 않기 때문에 호흡곤란, 흉통, 기침, 객혈 등의 증상이 주로 나타납니다. 심한 경우에는 혈전이 폐혈관의 흐름을 완전히 막고 펌프 역할을 하는 심장에도 영향을 끼쳐 사망에 이를 수 있는 위험한 질환입니다.#
                                폐색전증의 원인#폐색전증의 주요 원인은 다리 혈관(정맥)에 발생하는 심부정맥혈전증(심재성 정맥혈전증)으로, 심부정맥이란 근육 안쪽 깊은 곳에 있는 정맥을 뜻합니다. 폐색전증은 대부분 심부정맥혈전증에 의해 발생하고, 심부정맥혈전증의 약 40~50%에서 폐색전증이 발생합니다. 심부정맥혈전증은 크게 해부학적 구조에 따라 두 가지로 나뉩니다. 혈전이 종아리 정맥에 국한되어 있는 원위부 정맥혈전증과 오금이나 대퇴 혹은 장골 정맥을 침범한 근위부(심장에 더 가까이 있고 크기가 큰 혈관) 정맥혈전증입니다. 이 가운데 근위부 정맥혈전증이 폐색전증을 주로 발생시키고 심한 증세를 일으키므로 임상적으로 중요합니다.#
                                폐색전증의 치료#폐색전증의 예후는 중증도와 치료 시기에 따라 달라지므로 조기 진단과 적절한 치료가 중요합니다. 정맥혈전색전증 치료는 혈전의 진행과 폐색전증의 발생 및 악화를 방지하고, 재발성 혈전증의 위험을 낮추는 것이 목표입니다. 대량의 정맥혈전증에 의한 정맥성 괴사를 막기 위해 다리 혈관을 통한 시술치료로 혈전을 제거하고 정맥의 흐름을 호전시킬 수 있습니다. 또한 치료 후기 합병증인 만성 혈전에 의한 정맥부전증이나 만성 혈전색전성 폐동맥고혈압(chronic thromboembolic pulmonary hypertension, CTEPH)을 예방하는 것이 무엇보다 중요합니다.#
                                폐색전증의 예방#정맥혈전색전증 발생을 막기 위해서는 우선 운동을 포함해 활동량이 감소하지 않도록 주의하고, 하체 근력을 강화해 혈관에 피의 흐름이 정체되지 않게 하는 것이 무엇보다 중요합니다. 또한 투약, 큰 질병으로 인한 치료(수술 포함), 스트레스 등을 받으면 인체에서 호르몬 변화가 나타나므로 예방 조치까지 필요할지 의료진과 면밀하게 의논해야 합니다.
								','9e9d9e49-23d7-4904-90e1-cebade55bacd.png',2,to_timestamp('25/01/02 12:42:24.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:19:12.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('2','2','6','대동맥판막 협착증 [Aortic valve stenosis]','대동맥판막 협착증 [Aortic valve stenosis]','																		대동맥판막 협착증이란?#판막은 심장의 박동에 따라 일정하게 열리고 닫히며 혈액이 한 방향으로 흐르게 하기 위한 구조입니다. 혈액이 심장의 좌심실에서 대동맥으로 나가는 부분에 대동맥판막이 위치하는데, 대동맥판막 사이 간격이 좁아지고 잘 열리지 않는 것을 대동맥판막 협착증이라고 합니다. 대동맥판막 협착증이 생기면 혈류의 흐름에 저항이 생기고 심장에 무리가 가면서 호흡곤란, 가슴 통증, 어지럼증, 실신 등의 증상이 나타날 수 있습니다.#
                                대동맥판막 협착증의 원인#대동맥판막 협착증의 원인은 다양하며, 노화, 선천적 이상, 감염성질환 등이 대동맥판막 협착증을 일으키는 대표적인 원인입니다. 나이가 들면서 혈액 속 칼슘이 판막에 지속적으로 침착하면 석회화가 진행되면서 대동맥판막 협착증이 발생할 위험이 커집니다. 최근에는 죽상동맥경화증과 유사한 염증 반응도 관련이 있다고 봅니다. 고혈압, 고지혈증, 당뇨병, 만성신장질환은 대동맥판막 협착증의 위험 인자입니다.#
                                대동맥판막 협착증의 치료#대동맥판막 협착증의 치료는 협착의 정도에 따라 다릅니다. 협착이 경미하면 약을 복용하면서 정기적으로 심장초음파검사를 받아 경과를 관찰합니다.협착의 정도나 협착으로 인한 증상이 심한 경우, 심장의 기능 저하가 심한 경우, 협착의 진행 속도가 빠른 경우에는 수술의 대상이 됩니다. 손상된 판막을 복구하거나 인공판막으로 교체하는 수술을 진행합니다. 또는 다리 혈관으로 진입해 대동맥판막을 교체하는 경피적 대동맥판막치환술을 시행할 수 있습니다.#

								','3d127d2a-662e-4c58-9348-de2a307e665b.png',11,to_timestamp('25/01/02 12:46:42.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 15:40:46.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('3','2','6','부정맥 [Arrhythmia]','부정맥 [Arrhythmia]','																		부정맥이란?#부정맥이란 심장의 리듬이 너무 빠르거나 느리거나 불규칙해지는 상태를 말합니다. 부정맥은 진단명이 아니라 심장의 전기적 이상 증상을 아우르는 용어로, 여기에 20~30종류의 진단이 포함되어 있습니다. 단독으로 생기기도 하지만, 대부분은 이미 앓고 있는 심장질환에 덧대 발생해서 상황을 악화시킵니다. 앓는 줄도 모르고 앓기 십상인 심방세동이나 급사의 원인이 되는 심실빈맥이 대표적입니다. 심장 부정맥에 포함된 여러 리듬 질환의 상당수는 잠시 나타났다가 숨어버리는 도깨비 같은 병입니다. 그래서 진단도 어렵고 치료 후 모니터링도 쉽지 않고, 환자마다 증상이 다양하고 개인차가 매우 큽니다.#
                                부정맥의 치료#항부정맥 약제를 복용하는 한편, 최근 부정맥 질환에 시술 치료가 적극적으로 적용되고 있습니다. 그러나 대부분의 부정맥 질환은 시술로 완치된다기보다는 조절한다는 표현이 맞습니다. 항부정맥 약제로 조절되지 않는 심방세동은 대표적인 만성 진행형 질환으로, 시술로 맥박 조절 성공률을 높일 수 있지만, 완치에 이를 수는 없습니다. 비교적 진행이 덜 된 발작성 심방세동은 1년 재발률이 15%, 만성화된 지속성 심방세동은 약 25%이며, 재발 후 항부정맥 약제를 추가하면 90%의 환자에서 정상 맥박을 유지할 수 있습니다. 그러나 시술 후 1~2년간 잘 지내다가 5년, 심지어 10년 후에 재발하는 경우가 드물지 않습니다. 부정맥이 노화와 더불어 진행하는 질환이기 때문입니다. 반면 부정맥 가운데 상심실성 빈맥증은 전극도자 절제술로 완치율이 98%에 달합니다#

								','bf4d4c19-7d1c-4776-93c5-b60d81703472.png',6,to_timestamp('25/01/02 12:48:24.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:16:06.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('4','8','6','수면무호흡증 [Sleep apnea]','수면무호흡증 [Sleep apnea]','									수면무호흡증이란?#코골이 소리는 들이마신 공기가 코와 입 안의 숨 쉬는 길로 들어오면서 좁아지는 부분을 통과할 때 주변 점막을 진동시켜서 나는 것으로, 일반적으로 목젖 부위 혹은 혀 뒷부분이 좁아지면서 발생하는 경우가 많습니다. 이때 만약 숨길이 더 많이 좁아져서 일정 시간 이상 폐쇄가 일어나면 수면무호흡증이 함께 발생합니다.#
                                수면무호흡증의 원인#수면무호흡증이 발생하기 쉬운 신체적 특징으로는 우선 비만을 들 수 있습니다. 살이 찌면 상기도 주변 근육 사이에 지방 침착이 증가하면서 근육의 탄력이 감소하고 비대해져서 숨 쉬는 길이 좁아지기 때문입니다. 그런데 동양인은 정상 체중이어도 수면무호흡이 발생하는 경우가 자주 있습니다. 서양인에 비해 골격 구조가 작기 때문에 체중이 약간만 증가해도 기도의 내경이 민감하게 좁아지는 효과가 생겨 수면 중 숨 쉬는 길이 막힐 가능성이 높아지는 것입니다.#
                                수면무호흡증의 치료#수면무호흡증의 치료 방법으로는 양압호흡기, 구강 내 상기도 확장 장치, 치아 및 안면골 교정, 그리고 수술적 치료가 있습니다. 환자의 증상 및 병력에 따라 가장 적합한 치료법을 찾습니다.#
                                수면무호흡증의 예방#수면무호흡증을 예방하고 치료 후 재발을 막기 위해서는 환자 스스로 음주, 흡연 등을 삼가고 평소 규칙적인 운동을 통해 체중이 늘지 않도록 관리하는 것이 무엇보다 중요합니다. 또한 나이 및 기저질환과 몸 상태에 따라 수면무호흡증의 심한 정도가 변할 수 있으므로, 평소 수면의 질에 관심을 기울이도록 합니다.#
								','aac60ebd-b522-4c4d-898f-3361625befdf.png',3,to_timestamp('25/01/02 12:50:08.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:17:17.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('5','3','1','윌슨병 [Wilson disease]','윌슨병 [Wilson disease]','									윌슨병이란?#윌슨병은 구리(copper)의 대사장애로 간이나 뇌 등에 구리가 쌓이는 선천성 질환입니다.
인간은 음식을 통해 탄수화물, 단백질, 지방을 비롯해 수많은 영양소를 섭취하는데, 그중 구리는 철의 운반과 산화, 뼈의 무기질화, 세포호흡 등을 보조합니다. 구리는 아주 소량이지만 인체에 꼭 필요한 영양소 중 하나로, 다양한 식품에 포함되어 있기 때문에 대부분의 사람들은 체내 필요량보다 더 많은 양의 구리를 섭취합니다. 이렇게 과잉 섭취한 구리는 간에서 대사되어 대소변으로 배출되는데, 이 구리의 배출에 관여하는 ATP7B 유전자의 돌연변이로 인해 구리가 우리 몸에서 제대로 배출되지 않아 인체 여러 기관이 망가지는 희귀유전질환이 바로 윌슨병입니다.#
윌슨병의 증상#구리는 금속성 물질이라 오랜 시간이 흘러도 인체에서 녹아 없어지지 않습니다. 혈관을 떠돌다가 간, 뇌, 안구, 신장 등 인체의 여러 조직에 조금씩 쌓이면서 박혀서 장기를 서서히 망가뜨립니다. 구리가 가장 먼저 축적되기 시작해 가장 먼저 손상되는 장기는 간으로, 구리에 의해 간에 염증이 생기고 간경변증이나 간암으로 이어질 수 있습니다. 초기에는 만성피로 같은 비특이적 증상이 나타나다가 간 손상이 심해지면 황달, 복수 등이 발생합니다. 구리가 간을 넘어 뇌에 쌓이면 말이 어눌해지거나 인지기능이 저하되고 손발이 떨리고 침을 흘리는 등의 신경학적 증상이 나타나고, 안구에 침착되면 실명에 이를 수 있습니다. 구리로 인해 신장 기능이 망가져 투석치료를 받는 환자도 있습니다.#
윌슨병의 원인#윌슨병은 구리의 배출에 관여하는 ATP7B 유전자의 돌연변이로 발생하는 상염색체 열성 유전질환입니다.#
윌슨병의 진단#환자의 증상, 간 기능 평가, 24시간 소변 구리 검사 등을 종합해 윌슨병을 추정할 수 있고, 유전자 검사로 ATP7B 유전자 돌연변이를 확인할 수 있습니다.#
윌슨병의 치료#유전자 돌연변이로 발생하는 질병이기 때문에 병의 원인 자체를 교정할 순 없지만, 구리가 많이 함유된 음식 섭취를 조절하면서 약물치료를 받으면 큰 문제없이 일상생활을 할 수 있습니다.#
								','81ea1805-c04d-407e-9c1e-5d19a2cfdfff.png',1,to_timestamp('25/01/02 20:24:48.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:18:17.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('6','8','1','레녹스-가스토 증후군 [Lennox-Gastaut syndrome]','레녹스-가스토 증후군 [Lennox-Gastaut syndrome]','																		레녹스-가스토 증후군이란?#레녹스-가스토 증후군(Lennox-Gastaut syndrome)은 다양한 유형의 발작, 특징적인 뇌파 소견, 인지 장애를 특징으로 하는 심각한 형태의 소아 뇌전증 증후군입니다. 레녹스-가스토 증후군은 희귀 질환으로, 발생률은 10만 명당 약 0.1~0.3명으로 추정되며, 소아의 경우 10만 명당 약 2명으로 추산됩니다. 소아 뇌전증 전체의 약 1~5%를 차지하며, 5세 이전에 발생하는 뇌전증의 약 10%를 차지합니다.#
                                 레녹스-가스토 증후군의 증상#레녹스-가스토 증후군은 다양한 유형의 발작, 특징적인 뇌파 소견, 그리고 인지 장애를 특징으로 합니다.
- 발작: 발작은 보통 1~7세 사이에 시작되며, 3세 전후에 가장 흔하게 발병합니다. 다양한 유형의 발작이 나타나는데, 강직발작, 무긴장발작, 비정형 결신발작, 근간대발작, 전신강직간대발작 등이 혼재되어 나타납니다. 가장 흔한 발작 유형은 강직발작이며, 주로 밤에 발생하는 경우가 많습니다.
- 인지 장애: 레녹스-가스토 증후군 환자는 초기 발달 과정에서 이상이 없을 수 있지만, 발작이 시작된 후 발달 지연, 지적 장애, 학습장애, 행동 문제가 발생합니다. 이러한 발달의 악화는 환자 대부분에서 관찰되며, 나이가 들수록 더 심해져 발달의 퇴행을 보입니다. 일부 환자에서는 인지와 기억력은 정상이지만 정보 처리 속도만 느려지는 모습을 보이기도 합니다. 행동 문제에는 과민성, 과잉 행동 등이 포함됩니다.#
레녹스-가스토 증후군의 원인#레녹스-가스토 증후군은 뇌 신경계에 영향을 줄 수 있는 다양한 원인에 의해서 발생할 수 있습니다. 대뇌피질의 발달 기형 및 저산소-허혈성 뇌병증 등 뇌의 구조적 이상, 유전자 돌연변이, 대사이상, 선천성 감염 등이 모두 레녹스-가스토 증후군의 원인이 될 수 있습니다. 약 25%의 경우에는 원인이 확인되지 않는 것으로 보고되고 있습니다.#
레녹스-가스토 증후군의 진단#레녹스-가스토 증후군의 진단은 임상 양상 및 특징적인 뇌파 소견에 기반하여 이루어집니다. 뇌파에서는 느린 배경파와 더불어 특징적인 발작간기 전두부 우위 양쪽 동기성 1~2.5 Hz의 느린 극서파가 확인됩니다. 뇌파 외에도 원인을 찾기 위한 검사로, 뇌 MRI, 대사이상 검사 및 유전자 검사를 시행할 수 있으며, 발달을 평가하기 위한 발달 평가도 진행할 수 있습니다.#

								','f0017aea-3621-495c-bf3b-c6c2541e9c3f.png',4,to_timestamp('25/01/02 20:27:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:15:18.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('7','3','14','두드러기 [Urticaria]','두드러기 [Urticaria]','																		두드러기란?#두드러기(담마진)는 피부 혈관의 투과성이 증가하면서 혈액 속 혈장 성분이 일시적으로 피부조직 내에 축적되어 피부가 부풀어 오르고 심한 가려움증이 동반되는 현상입니다. 두드러기는 전 인구의 약 20%가 일생에 한 번 이상 경험하는 매우 흔한 증상입니다.
한편 이런 증상이 한두 번 나타났다 사라지는 급성 두드러기는 별 문제가 되지 않습니다. 하지만 급성 두드러기 환자 가운데 3%는 6주 이상 거의 매일, 전신 또는 국소적으로 증상이 나타나는 만성 두드러기로 발전합니다. 만성 두드러기는 악화와 호전을 반복하면서 삶의 질을 저하시키고 직장 및 학교생활에 지장을 줍니다.#
두드러기의 증상#피부가 부풀어 오르는 팽진과 주변 부위가 붉게 변하는 발적이 특징이며, 대부분 가려움증이 동반됩니다. 때때로 입술과 눈 주위가 붓는 혈관부종이 동반되기도 합니다. 특별한 조치가 없어도 이러한 증상은 대부분 24시간 이내에 저절로 소실됩니다.#
두드러기의 원인#급성 두드러기는 일부 식품(옻닭, 게, 새우, 조개 등)이나 특별한 행위(머리카락 염색, 화장 등)와 연관된 경우가 많지만, 만성 두드러기는 대부분 특별한 원인 없이 발생합니다. 만성 두드러기 환자 중 대다수가 두드러기를 치료하거나 줄이기 위해 피해야 할 음식에 대해 궁금해하지만, 만성 두드러기의 경우 식품이 원인일 가능성은 떨어집니다. 일련의 만성 두드러기와 식품의 관련성을 살펴보았을 때 두드러기 증상은 식품 자체에 대한 알레르기 반응이라기보다는 포함된 색소, 방부제 등 식품첨가물에 의한 가성 알레르기 반응인 경우가 더 흔합니다.#
두드러기의 검사#두드러기를 정확하게 진단하려면 특징적인 가려움증을 동반한 불룩한 피부 병변을 육안으로 확인하는 것 외에 자세한 병력 청취가 중요합니다. 또한 피부그림증 및 물리적 유발요인에 대한 신체검진 및 유발시험을 시행해볼 수 있습니다. 간단하게 시행할 수 있는 것으로는 한랭 두드러기 진단을 위한 얼음조각 검사, 콜린성 두드러기 진단을 위한 운동유발시험 등이 있습니다.#
두드러기의 치료#급성 두드러기는 경구용 항히스타민제와 부신피질호르몬제(스테로이드)를 단기간 사용해 증상을 조절할 수 있습니다. 하지만 만성 두드러기는 부신피질호르몬제의 투여 기간이나 용량과 관련되어 나타나는 약물 유해 반응(당뇨병, 골다공증, 쿠싱 증후군 등)의 가능성 때문에 장기간 사용하는 것은 피하는 게 좋습니다. 즉 만성 두드러기의 약물 치료는 한 가지 항히스타민제를 사용하는 것이 기본이며, 증상이 악화될 때는 꼭 필요한 경우에만 부신피질호르몬제를 단기간 사용합니다.#

								','a48e0782-5740-41f6-9220-b9460e49878d.png',4,to_timestamp('25/01/02 20:31:40.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 09:07:58.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('8','3','5','두그레이브스병 [Graves disease]','그레이브스병 [Graves disease]','그레이브스병이란?#그레이브스병은 갑상선호르몬의 분비를 자극하는 자가항체가 생성되어 갑상선호르몬이 과도하게 분비됨으로써 다양한 증상이 나타나는 자가면역질환입니다. 20세에서 50세 사이에 많이 발병하며, 여성에서 4~8배 많이 발생합니다. 혈중 갑상선호르몬이 지나치게 많아진 상태를 일컫는 갑상선중독증(thyrotoxicosis)의 가장 흔한 원인입니다.#
                                그레이브스병의 증상#갑상선호르몬은 에너지를 소모시키고 신진대사를 조절하는 기능을 하기 때문에, 갑상선호르몬이 증가하면 더위를 많이 타고, 발한, 과민성, 두근거림, 피로 및 쇠약, 체중 감소, 설사, 희발 월경 등의 증상이 나타납니다. 이와 더불어 갑상선이 커져서 목 앞쪽이 부풀어 오르기도 합니다. 갑상선항진증이 심하거나 오래 지속되면 합병증으로 부정맥이나 골다공증이 발생하기도 합니다.#
                                그레이브스병의 원인#그레이브스병은 자가면역질환으로, 갑상선자극호르몬 수용체에 대한 자가항체가 생겨 수용체를 활성화시킴으로써 갑상선호르몬의 합성과 분비를 자극하고 갑상선의 성장을 유도해 발생합니다. 발병은 다양한 유전적 소인과 환경적 요인에 의해 영향을 받는 것으로 알려져 있으나 아직 명확하게 밝혀지지 않은 부분들이 있고, 관련성이 제기된 환경적 요인에는 흡연, 스트레스, 감염, 출산 등이 있습니다.#
                                그레이브스병의 진단#혈액검사로 혈중 갑상선호르몬 수치를 검사하고, 갑상선자극호르몬 수용체 항체의 유무를 확인해 진단합니다. 진단이 불확실하거나 갑상선중독증을 일으키는 다른 병과 그레이브스병을 감별하기 위해 초음파 검사나 갑상선 스캔이 필요할 수 있습니다.#
                                그레이브스병의 치료#그레이브스병의 치료는 약물 치료, 방사성동위원소 치료, 수술적 치료의 세 가지로 나뉩니다. 세 치료 모두 각각 서로 다른 장단점이 있어서 환자의 상태와 선호 등 다양한 요인을 고려해 치료방법을 결정합니다.
약물치료는 갑상선호르몬의 합성을 막는 항갑상선제를 사용합니다. 우리나라에서 그레이브스병 치료에 가장 널리 사용하는 방법으로, 이 경우 주기적으로 혈액검사를 통해 갑상선호르몬 수치를 확인하고 용량을 조절합니다. 항갑상선제가 효과를 나타내기까지는 시간이 걸리기 때문에, 갑상선중독증의 증상을 신속히 완화하기 위해 다른 약물을 병용할 수 있습니다.#',null,11,to_timestamp('25/01/02 20:33:34.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 09:07:56.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('9','3','1','쿠싱증후군 [Cushing syndrome]','쿠싱증후군 [Cushing syndrome]','									쿠싱증후군이란?#쿠싱증후군은 우리 몸이 장시간 당질코르티코이드(코르티솔)에 과하게 노출됨으로써 전신적인 증상이 발생하는 질환을 말합니다.#
                                쿠싱증후군의 증상#쿠싱증후군만의 고유한 증상이나 징후는 없지만, 일부 증상의 경우 쿠싱증후군을 의심해볼 수 있습니다. 쿠싱증후군 환자에서는 팔과 다리에 있던 지방세포들이 몸의 중심으로 옮겨가는 중심성 비만이 생깁니다. 이렇게 되면 팔다리가 가늘어지고, 대신 복부비만이 나타납니다. 또한 얼굴에도 지방이 축적되면서 마치 보름달과 같은 형태를 띠게 되는데, 이를 ‘월상안(moon face)’이라고 부릅니다. 목뒤와 등쪽에 지방이 축적되면 볼록한 형태를 띠고 이것을 ‘버팔로 혹(buffalo hump)’이라고 부릅니다. 피부 바로 아래의 지방이 감소해 쉽게 멍이 들고 상처도 잘 아물지 않게 됩니다. 피부가 얇아져 배와 엉덩이에 튼살처럼 보이는 보라색 선이 생기기도 합니다. 이 밖에도 근위부 근육 약화, 혈압 상승, 골다공증, 얼굴 홍조 등이 나타날 수 있습니다.#
                                쿠싱증후군의 원인#부신피질호르몬제를 투여하는 도중 부작용으로 발생하는 경우가 가장 흔합니다. 하지만 우리 몸 내부에서 당질코르티코이드가 과하게 만들어져 발병하기도 합니다. 크게 세 가지 원인이 있는데, 첫 번째로 뇌하수체의 이상으로 부신피질자극호르몬(ACTH)이 많이 만들어지는 경우가 있습니다. 이 경우 과도하게 생성된 부신피질자극호르몬이 부신을 자극해 부신에서 당질코르티코이드가 과하게 만들어집니다. 두번째로 부신 자체의 이상으로 당질코르티코이드가 과하게 만들어지는 경우가 있습니다. 세번째로는 폐종양 등과 같이 드물게 뇌하수체가 아닌 다른 부위에서 부신피질자극호르몬이 많이 만들어지고 이로 인해 부신에서 당질코르티코이드가 많이 생성되는 경우입니다.#
                                쿠싱증후군의 치료#부신피질호르몬제 노출에 의해 생긴 쿠싱증후군은 약물을 서서히 줄이며 중단하는 것이 치료법입니다. 하지만 뇌하수체나 부신에 종양이 생겨 쿠싱증후군이 발생하였다면 수술이나 방사선치료를 통해 종양을 제거해야만 합니다. 수술이나 방사선치료 후에도 치료가 되지 않은 경우에는 호르몬 합성을 억제하는 약물을 함께 사용하기도 합니다.#
								','97cb659f-9c40-4804-a998-ecb2ad6a2c88.png',3,to_timestamp('25/01/02 20:36:20.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:18:48.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('10','4','5','구인두암 [Oropharyngeal cancer]','구인두암 [Oropharyngeal cancer]','																		구인두암이란?#인두(Pharynx)는 구강과 식도 사이에 위치한 부분을 말하며, 크게 비인두, 구인두, 하인두로 나뉩니다. 이 중 구인두(Oropharynx)는 구강 뒤에 위치하며, 연구개에서 목뿔뼈(설골)까지 이르는 부위를 가리킵니다. 구인두에 포함되는 구조물인 편도, 설기저부(혀뿌리), 연구개, 목젖, 인두 후벽에 발생한 암을 모두 구인두암이라고 부릅니다. 일반적으로 남녀의 성비는 5:1로 남성에게서 더 많이 발생하며, 연령대별로는 60대가 가장 많습니다.#
                                 구인두암의 증상#인두 이물감, 목의 통증, 삼킴 곤란, 목의 만져지는 종괴 등이 나타날 수 있습니다. 발생 위치에 따라 증상이 다양하며, 병이 많이 진행될 때까지 증상이 없을 수도 있습니다.#
                                 구인두암의 위험요인#대표적인 위험요인은 흡연, 음주, 사람유두종바이러스(Human Papilloma Virus, HPV) 감염입니다. 특히 최근 진단되는 구인두암의 50~60%는 HPV 감염과 관련이 있다고 알려져 있습니다. HPV 연관 구인두암은 젊은 연령에서도 발생할 수 있으며, 성적 접촉 등을 통해 발병하는 것으로 알려져 있습니다.#
                                 구인두암의 진단#기본적으로 후두내시경을 통해 구강 및 구인두 부위를 자세히 관찰합니다. 의심되는 부위가 있다면 외래에서 국소마취 하에 또는 수술실에서 전신마취 하에 조직 검사를 시행해 악성 종양 여부를 확진하게 됩니다. 조직 검사를 통해 암이 확진되면 병변의 범위를 자세히 관찰하고 경부 림프절 전이 유무 등을 확인하기 위해 경부 전산화단층촬영(CT), 자기공명영상(MRI), 초음파(Sonography) 등의 검사를 시행합니다. 또한 전신 전이 유무를 확인하기 위해 양전자방출단층촬영(PET) 검사를 시행합니다.#
                                 구인두암의 치료#기본적인 치료법으로는 수술, 방사선치료, 항암화학요법 등이 있으며, 병기에 따라 치료 방법이 달라질 수 있습니다. 초기 구인두암(1-2기)의 경우 수술 또는 방사선 단독 치료법을 시행해 볼 수 있으며, 진행성 구인두암(3-4기)의 경우 수술과 방사선치료, 항암화학요법 등을 병합해서 치료합니다. 모든 치료는 암의 병기, 병변의 상태, 환자의 전신 상태 등을 고려해 개개인의 상황에 맞추어 치료방침을 결정하게 됩니다.#

								','75b0fdaf-0005-4d09-b973-309027e82c2e.png',42,to_timestamp('25/01/02 20:38:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:14:04.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('11','4','5','성대 결절 [Vocal nodule]','성대 결절 [Vocal nodule]','																		성대 결절이란?#성대 결절은 성대의 중간부에 발생하는 작은 결절로, 보통 성대를 과도하게 사용하거나 잘못된 발성 방법으로 인해 발생합니다. 주로 소년과 성인 여성에서 발생하며, 직업적으로는 가수나 교사에서 호발하는 경향을 보입니다.#
                                성대 결절의 증상#성대 결절이 생기면 성대가 완전히 닫히지 않으면서 쉰 목소리가 납니다. 특히 일상적인 대화 때보다 노래할 때 고음에서 분열이 생기고 부드럽지 않은 목소리가 나며, 쉽게 목소리가 변하거나 평소보다 발성할 때 힘이 많이 들어가는 느낌 등이 발생할 수 있습니다.#
                                성대 결절의 원인#성대에 가해지는 매우 강하고 지속적인 진동은 성대의 중간 부위에 부종과 혈관 충혈을 야기하며, 성대 점막의 울혈과 출혈은 섬유화를 발생시키고, 이는 결국 성대에 단단한 결절을 형성하게 만듭니다.#
                                성대 결절의 진단#외래에서 간단히 후두내시경을 통해 진단할 수 있으며, 성대의 중간 지점에서 양측으로 넓은 기저부를 가진 흰 돌기로 관찰됩니다. 성대 점막의 파동 및 진폭 등을 보다 정확히 평가하기 위해서 후두섬광촬영기(Laryngostroboscope)를 통해 검사하기도 합니다.#
                                성대 결절의 치료#기본적으로 성대에 습기를 충분하게 공급하기 위해 수분 섭취를 충분히 하며, 알레르기나 역류성 인후두염 등 기저 질환에 대한 치료가 필요할 수 있습니다. 20분 이상의 과도한 발성, 속삭이거나 소리를 지르는 행위, 습관성 헛기침 등은 피하는 것이 좋습니다. 성대 결절은 우선 음성 치료가 첫 번째 치료법입니다. 음성 치료는 성대를 올바르게 사용하는 방법을 배우기 위해 전문 발성 치료사와 함께 훈련하는 것으로, 음성 치료를 통해 약 80% 정도는 증상 호전을 보일 수 있습니다. 하지만 최소 3개월 이상 충분한 기간을 갖고 음성 휴식 및 음성 치료를 시행했음에도 불구하고 증상의 호전이 없다면 수술을 고려할 수 있습니다. 소아에서 성대 결절이 발생했을 때는 소아의 경우 수술 후 재발이 잦고, 사춘기 이후 자연 치유가 되는 경우가 흔하며, 수술 후 음성 휴식에 대한 환자의 협조가 힘든 경우가 많아서 수술을 잘 시행하지 않는 편입니다.#

								','f7e5a84a-e9be-46ac-a4d6-65284e686ea7.png',2,to_timestamp('25/01/02 20:40:18.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:16:45.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('12','4','2','벨마비 [Bell palsy]','벨마비 [Bell palsy]','																		벨마비란?#안면신경은 뇌에서 시작되어 귀 안쪽과 이하선을 통과해 얼굴에 분포합니다. 안면신경마비는 크게 안면신경 자체에 문제가 생기는 말초성 안면마비와 신경의 기능을 조절하는 중추신경계에 문제가 생기는 중추성 안면마비로 나누어볼 수 있습니다. 뇌졸중, 뇌종양 등 다양한 중추신경계 질환이 원인이 되어 나타나는 중추성 안면마비가 훨씬 심각한 질환이지만, 다행히 대부분은 귀 안에 위치하는 안면신경에서 문제가 발생하는 말초성 안면마비입니다.#
                                 벨마비의 증상#보통 마비가 생기기 며칠 전에 전조증상으로 귀 뒤에 묵직한 통증을 느끼는 경우가 많습니다. 이후 물을 마실 때 입으로 물이 줄줄 흐르거나 빨대 사용이 힘들어지고, 양치할 때 침이 줄줄 흐르는 등 다양한 증상으로 안면신경마비를 발견하게 됩니다. 대부분 한쪽에서만 마비가 일어나고, 70% 정도는 완전 마비 형태로 발생합니다. 보통 마비 증상은 이틀 동안 점점 심해지며, 이때 완전 마비로 진행하는지 불완전 마비에서 그치는지에 따라 예후가 달라집니다.#
                                 벨마비의 진단#환자의 증상을 확인하고 바로 진단할 수 있습니다. 다만 안면신경은 안면 근육을 움직일 뿐 아니라 감각(청각과 미각), 눈물과 침 분비에도 관여하기 때문에 마비가 일어났을 때 안구 건조나 구강 건조와 같은 관련 증상이 생길 수 있습니다. 따라서 청각검사, 누액분비검사, 타액분비검사를 시행하거나, 마비의 상태나 예후를 판단하기 위해 신경전도검사 등을 시행합니다. 또 외상의 과거력이나 감각신경성 난청이 동반된 경우에 원인 감별을 위해 CT, MRI 등을 시행할 수 있습니다.#
                                 벨마비의 예후와 치료#벨마비는 예후가 좋은 병이어서 약물치료의 방법, 치료 약제의 종류, 수술적 치료의 필요성에 대해 논란이 많습니다. 보통 수개월 내에 회복되고 대부분 1년 안에 회복이 완료되며, 불완전 마비의 경우 94%에서 완전 회복이 이루어집니다. 반면 완전 마비의 경우에는 70% 정도의 회복률을 보인다고 알려져 있습니다.#

								','d0f85d66-1931-495b-b1d8-40a0a49d6f03.png',2,to_timestamp('25/01/02 20:42:40.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:15:43.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('13','5','7','간암 ~!!~!! [Hepatoma @@]','간암 ~!!~!! [Hepatoma @@]','																																													간암이란?#넓은 의미의 간암은 간세포암, 담도암 등 간에 발생하는 악성 종양을 모두 포함하지만, 그중 간세포암이 약 80%로 대부분을 차지하기 때문에 통상적으로 말하는 간암은 간세포암을 의미합니다. 간암은 다발성으로 발생하는 경우가 많고, 암이 자라는 속도가 빠르며, 주요 혈관을 타고 전이가 잘 되는 특성을 가진 악명 높은 암입니다.#
                                간암의 증상#조기 간암의 증상으로 피로감, 전신 쇠약감, 소화 불량, 상복부에 느껴지는 뻐근함, 체중 감소 등을 꼽을 수 있지만, 이런 증상으로 간암을 알아채기는 쉽지 않습니다. 암이 좀 더 진행되고 간 기능이 떨어지면 복수가 찬다거나 심한 체중 감소, 황달이 나타납니다.#
                                간암의 원인#간암의 대표적인 원인으로는 만성 B형 간염과 C형 간염, 간경변증을 꼽을 수 있으며, 국내 전체 간암 환자의 65-70%는 B형 간염을 갖고 있습니다. B형 간염은 주로 혈액이나 체액을 통해 전염되며, 영유아기 백신 접종을 시작한 후로 국내 B형 간염 발생률은 줄어들고 있습니다. 그러나 50대 이상에서는 B형 간염 보균자가 상당히 많은 편인데, 모체 수직 간염, 즉 태어날 때 이미 어머니로부터 B형 간염 바이러스에 곧바로 감염된 사례가 많기 때문입니다.#
                                간암의 검사#만성 B형/C형 간염, 알코올성 간경변증, 만성 간 질환 같은 위험인자가 있다면 반드시 6개월에 한 번, 혈액에서 AFP(알파태아단백) 수치를 확인하는 종양표지자 검사와 초음파 검사를 받아야 합니다. 다만 심한 간경변증이 동반된 간은 간 손상과 재생이 반복되는 과정에서 발생하는 결절이 많기 때문에 초음파만으로는 암과 구별이 어려울 수 있어서 MRI나 CT가 활용되기도 합니다.#




								','47c0d5d7-19ec-429c-ac17-5a3dabd54c9a.jpg',289,to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 16:22:28.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('14','5','7','소화성궤양 [Peptic ulcer]','소화성궤양 [Peptic ulcer]','																											소화성궤양이란?#소화성궤양은 우리 몸속 소화기관에 상처가 생기는 것으로, 일반적으로 위에 발생하는 위궤양과 십이지장에 발생하는 십이지장궤양을 뜻합니다. 소화성궤양은 위나 십이지장을 보호하는 점막 내벽이 손상돼 위산이 조직을 침식할 때 발생합니다. 원인 제거와 위산분비억제제 복용으로 대부분 잘 회복되지만, 질병 특성상 재발률이 높아 주의가 필요합니다.#
                                소화성궤양의 원인#흔히 스트레스나 매운 음식에 의해서 소화성궤양이 발생한다고 생각하기 쉽지만, 근본적인 발생 원인은 조금 더 복잡하며, 박테리아 감염과 약물 사용을 포함해 여러 요인의 조합으로 발생합니다.#
                                소화성궤양의 증상#타는 듯한 복통, 복부 팽만감, 메스꺼움, 구토, 때로는 체중 감소까지 매우 다양하게 나타날 수 있습니다. 그중 가장 흔한 증상은 상복부 통증으로 환자들은 속쓰림, 쓰라림 등으로 표현하기도 합니다. 통증은 공복에 악화될 수 있으나, 식후에 더 악화되는 경우도 있습니다. 그러나 당뇨병이 있거나 고령에서는 무증상인 사례도 많아 주의가 필요합니다.#
                                소화성궤양의 진단#일반적으로 소화성궤양은 환자 병력, 신체검사, 진단 테스트를 조합해 진단하지만, 가장 정확한 검사는 상부위장관 내시경검사, 즉 흔히 말하는 위내시경검사입니다. 내시경검사는 궤양을 직접 시각화해 가장 신뢰할 수 있는 방법입니다. 식도부터 위, 십이지장까지 내부를 직접 관찰해 궤양 여부, 궤양의 위치와 크기를 확인할 수 있습니다. 특히 우리나라는 위암 유병률이 높아 반드시 조직검사를 시행해 암세포 여부를 확인해야 합니다. 아울러 헬리코박터균 감염 여부를 함께 살펴서 궤양의 원인을 확인하는 것이 매우 중요합니다.#
                                소화성궤양의 치료#소화성궤양 치료에서 가장 중요한 점은 자세한 병력 청취와 복용하는 약제의 면밀한 검토, 그리고 헬리코박터균 검사를 통해 궤양을 일으키는 원인을 제거하는 것입니다. 헬리코박터균 감염이 확인되면 고용량 항생제와 위산분비억제제(proton pump inhibitor, PPI)를 함께 복용함으로써 헬리코박터균을 제거할 수 있습니다. 만약 진통소염제(NSAID)가 궤양의 원인이라면 가급적 사용을 중단하고, 약제 중단이 어려운 환자는 전문의와 상의해 위점막 보호기능이 있는 진통소염제로 변경하거나 위산분비억제제를 같이 복용해 위점막을 위산으로부터 보호해야 합니다.#


								','986b6a35-b0c2-4f42-9df0-8ebc4c7f2ba6.png',5,to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 09:08:03.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('15','5','6','식도이완불능증 [Esophageal achalasia]','식도이완불능증 [Esophageal achalasia]','식도이완불능증이란?#식도이완불능증은 음식물을 삼킬 때 식도와 위의 경계 부위인 하부식도조임근이 불완전하게 이완되는 대표적인 식도 운동성 질환입니다.
식도이완불능증은 국내 역학 연구상 연간 인구 10만 명당 0.4명에서 발생하는 것으로 나타났습니다. 연령 분포는 출생 후부터 80대까지 다양했고, 보고된 환자들의 평균 연령은 60세였으며, 40대가 가장 많았습니다. 14세 미만 소아가 전체 식도이완불능증 환자의 약 2%를 차지했습니다.#
식도이완불능증의 유형#원인을 알 수 없는 특발성이 대부분이지만, 어떤 원인 질환에 의해 이차적으로 발생한 경우를 속발성 식도이완불능증이라 합니다. 알려진 원인 질환으로는 샤가스병(Chagas disease), 아밀로이드증(amyloidosis), 유육종증(sarcoidosis) 등 양성 질환과 당뇨병, 가족성 부신피질성 스테로이드 결핍 증후군, 다발성 내분비성 종양 등 전신질환에 의한 경우가 보고되고 있습니다. 악성 종양에 의한 속발성 식도이완불능증은 드물게 나타나며, 악성 종양에 의한 경우를 ‘가성 식도이완불능증’이라고도 부르는데, 이러한 가성 식도이완불능증이 전체 식도이완불능증의 4%를 차지하고 있습니다.#
식도이완불능증의 증상#병원에 내원하기 전 평균 증상 기간은 2년 정도로 보고됩니다. 주로 호소하는 증상은 고형 및 액상 음식물에 대한 진행성 삼킴곤란이며, 식도에 고였던 음식물이 아침에 일어나면 입 밖으로 흘러나와 있거나 야간에 역류한 음식물이 폐로 흡인돼 호흡기계 증상을 유발하기도 합니다. 때로는 하부식도조임근 상부의 늘어난 식도에 의한 압박감 및 흉통을 호소하기도 합니다.#
식도이완불능증의 진단#식도이완불능증은 식도조영술과 식도내압검사로 진단합니다.#
식도이완불능증의 치료#손상된 신경세포를 복구할 수 있는 방법이 없어 아직 병 자체를 치료할 수는 없지만, 증상은 조절할 수 있습니다. 특히 초기에 발견해 치료하면 식도의 연동 운동이 일부 회복될 수 있습니다. 삼킨 음식물이 식도에서 위로 무리 없이 배출되도록 하부식도조임근의 압력을 감소시키는 치료법이 주로 사용되는데, 약물요법, 내시경적 치료, 수술요법이 있습니다.#',null,3,to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 09:04:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('16','5','7','담낭암 [Gallbladder cancer]','담낭암 [Gallbladder cancer]','																		담낭암이란?#담낭암은 담즙이 농축되는 장소인 담낭에 생기는 암을 말합니다. 주로 담낭세포에서 발생하는 선암종(adenocarcinoma)이 생깁니다. 담낭은 근육층의 구조가 느슨해서 암조직의 담낭 밖 침범이 용이한 편입니다.#
                                담낭암의 증상#초기 증상이 거의 없고, 증상이 있어도 오른쪽 상복부의 불편감이나 둔한 통증과 같이 비특이적 증상만 있어서 암이 꽤 진행된 이후에 발견하는 경우가 많습니다. 통증은 오른쪽 날개뼈와 어깨 방향으로 퍼지기도 합니다. 오른쪽 갈비뼈 아래에서 덩어리가 만져지기도 합니다. 암이 진행될수록 식욕부진, 체중 감소, 구토 등의 증상이 나타납니다. 암이 담도를 막으면 담즙이 배출되지 못하면서 황달이 나타나고 피부 가려움증이 생깁니다.#
                                담낭암의 원인#담낭암의 원인은 아직 명확하게 밝혀지지 않았지만, 다양한 담도계 질환 때문에 담낭이 만성적으로 자극을 받아서 생기는 것으로 보입니다. 담낭에 생기는 담석증은 담낭암의 직접적인 원인은 아니지만 암 발생에 영향을 줄 수 있으며, 담석의 크기가 3cm 이상으로 크거나 오래된 담석일 경우 위험 인자로 여겨집니다. 담낭의 석회화나 폴립(용종)이 있는 경우, 선천적 췌담관 이상으로 췌액이 담도로 역류하는 췌담관합류이상(anomalous pancreatobiliary duct union, APBDU)이 있는 경우도 담낭암의 위험요인입니다. 흡연이나 비만도 담낭암의 위험을 높이는 것으로 알려져 있습니다.#
                                담낭암의 진단#복부 초음파, 전산화단층촬영, 자기공명영상 등의 영상검사에서 담낭의 혹이 발견되면 의심할 수 있습니다. 담낭은 초음파검사로 잘 관찰할 수 있는 부위이기 때문에 건강검진을 하다가 우연히 발견되기도 합니다. 담낭암의 주변 조직 침범 정도를 확인하기 위해서 추가로 내시경 초음파나 내시경적 역행성 췌담관조영술(ERCP)을 시행하기도 합니다. 혈액검사로 종양표지자인 CEA나 CA19-9 수치가 상승했는지 확인합니다.#
                                담낭암의 치료#담낭암의 가장 근본적인 치료는 수술로 암을 모두 제거하는 것입니다. 암이 주변 장기를 침범한 정도에 따라 담낭을 포함해서 주변 림프절이나 간 일부를 함께 절제하기도 합니다. 암이 다소 진행되었더라도 증상 완화를 목적으로 수술을 고려하기도 합니다. 수술과 함께 국소 재발 방지를 위한 항암화학요법이나 방사선치료를 병행합니다. 암으로 담도가 막혀서 황달이 생기면 담즙을 배출할 수 있도록 시술을 진행합니다. 내시경으로 막힌 담도에 스텐트를 삽입하거나 피부를 통해 외부에서 관을 삽입해 담즙을 배출시킵니다.#

								','7d5a43e6-bdab-4422-9a11-510edcf59019.png',6,to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 15:53:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('17','6','1','혈소판감소증 [Thrombocytopenia]','혈소판감소증 [Thrombocytopenia]','									혈소판감소증이란?#혈소판감소증이란 혈액 1마이크로리터당 15만-40만 개가 존재해야 하는 혈소판이 10만 개 미만인 경우를 의미합니다. 일반적으로 혈소판감소증이 심할수록 출혈 위험이 증가한다고 생각하지만, 출혈 위험성이 혈소판 수치에 반드시 비례하지는 않으며 혈소판감소증을 유발하는 기저질환 등에 따라 다를 수 있습니다.#
                                혈소판감소증의 증상#경도의 혈소판감소증이 있을 때는 별다른 증상이 나타나지 않아 건강검진 등을 통해 우연히 발견하는 경우가 많습니다. 그러나 혈소판 수치가 심하게 낮으면 출혈 경향이 증가해 피부에 점출혈이나 자색반이 생길 수 있고, 이유 없이 반복되는 잇몸 출혈이나 코피, 월경 과다 등이 발생합니다. 드물지만 혈소판이 2만/uL 이하로 감소하면 외상 없이도 뇌출혈이나 장출혈 같은 주요 장기의 출혈이 발생할 수 있습니다.#
                                혈소판감소증의 진단#혈소판감소증은 일반 혈액검사를 통해 쉽게 진단할 수 있습니다. 하지만 혈소판이 감소하는 원인이 매우 다양하기 때문에 최종 진단에 이르기까지는 상세한 병력 청취와 문진, 여러 추가 검사가 필요합니다. 다음의 경우에는 골수의 조혈기능을 확인하고 골수형성이상증후군과 같은 혈액암을 배제하기 위해 골수검사를 시행합니다.

① 빈혈이나 백혈구감소증 등 기타 혈액 이상이 동반된 경우
② 원인이 불분명한 중증의 혈소판감소증이 지속되는 경우#
특발성 혈소판감소증의 치료#특발성 혈소판감소증은 출혈 증상과 혈소판 수, 동반 질환, 생활방식, 환자의 요구, 출혈 위험이 있는 약물 복용의 필요성 등 다양한 요소를 고려해 치료 여부를 결정합니다. 치료의 목표가 혈소판 수치를 정상으로 회복시키는 것이 아니라, 출혈 위험을 최소화하는 데 있기 때문입니다. 혈소판 수치가 5만/uL 이상으로 유지되는 경우, 수술 같은 침습적 처치가 예정되어 있거나 항응고제를 사용하는 경우 등을 제외하고 치료 없이 추적 관찰합니다. 이때는 대부분 무증상이고 자연 출혈의 위험이 낮기 때문에 치료를 통해 얻을 수 있는 이득보다는 부작용으로 인한 손해가 더 크다고 판단하는 것입니다. 혈소판 수치가 2만/uL 이하일 경우에는 중증의 출혈 위험이 있으므로 적극적인 치료를 실시합니다.#
								','82eae93d-8d2d-4543-b69e-9aedd5cd45db.png',2,to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:19:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('18','6','11','다발골수종 [Multiple myeloma]','다발골수종 [Multiple myeloma]','																		다발골수종이란?#다발골수종은 혈액 내 백혈구의 일종인 형질세포(Plasma cell)에서 발생하는 혈액암입니다. 형질세포는 혈액 내에서 외부의 감염원과 싸우기 위해 여러 가지 항체를 만들며 감염이나 질병으로부터 몸을 보호하는 중요한 역할을 하는데, 이 형질세포가 비정상적으로 분화하고 증식하면서 생기는 암을 다발골수종이라고 합니다.#
                                다발골수종의 증상#골수종세포가 침범하는 부위에 따라 여러 가지 증상이 나타날 수 있습니다. 뼈가 파괴되면서 골다공증이나 골절, 뼈 통증이 있을 수 있습니다. 골수종이 신경을 압박하면 감각이나 운동기능에 이상이 생기며, 대소변을 조절하기 어려워지기도 합니다. 파괴된 뼈에서 나온 칼슘이 혈액으로 나오면 고칼슘혈증이 생겨서 오심, 구토, 의식장애가 나타날 수 있으며, 비정상적인 단백질의 침착이나 고칼슘혈증으로 인해 신장 기능의 이상이 발생할 수 있습니다. 골수의 기능이 떨어져서 백혈구, 적혈구, 혈소판 수가 감소하면 빈혈이 생기고 감염, 출혈 등이 나타납니다.#
                                다발골수종의 원인#다발골수종의 정확한 원인은 밝혀져 있지 않지만, 평균 진단 연령이 65세 이상으로 주로 노인에게서 많이 발생하는 질환이며 최근 국내에서도 고령화 등으로 발병 빈도가 높아지고 있습니다. 방사선 노출이나 살충제, 제초제와 같은 화학 물질 노출, 유전자 이상 등이 위험 요인으로 알려져 있습니다.#
                                다발골수종의 진단#비정상적인 형질세포에서 만들어지는 M 단백(Monoclonal protein)을 혈액 혹은 소변에서 단백전기영동검사를 시행해 확인할 수 있습니다. 다발골수종은 혈액 또는 소변 검사를 통한 M 단백의 존재, 골수 혹은 조직검사에서의 비정상적인 형질세포의 증가, 다발골수종 관련 장기 손상 유무 등을 종합해 진단합니다. 빈혈, 고칼슘혈증, 신장 기능 등을 확인하고 X-ray와 MRI, PET-CT 등으로 뼈의 침범 유무를 확인합니다.#
                                다발골수종의 치료#혈액이나 소변에서 M 단백이 확인되었더라도 증상이 없는 무증상골수종(Smoldering multiple myeloma, SMM)은 바로 치료를 시작하지 않고 추적 관찰하는 경우도 있습니다. 반면 고칼슘혈증, 신부전, 빈혈, 골 병변 등의 증상을 동반하는 다발골수종은 신속하게 치료가 필요합니다.#

								','898f7763-abca-4ab1-99eb-b82a1ad69b1a.png',5,to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 09:07:49.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('19','6','1','재생불량성빈혈 [Aplastic anemia]','재생불량성빈혈 [Aplastic anemia]','									생불량성빈혈이란?#우리 몸의 혈액은 백혈구, 적혈구, 혈소판 등의 혈구로 이루어져 있으며, 혈구는 골수 내의 조혈모세포에서 만들어집니다. 재생불량성빈혈은 조혈모세포의 손상으로 백혈구, 적혈구, 혈소판이 모두 감소하는 범혈구감소증(pancytopenia)을 보이는, 조혈기능의 장애를 나타내는 질환입니다.#
                                재생불량성빈혈의 증상#재생불량성빈혈은 사람마다 증상도 다르게 나타나고, 진행되는 속도도 다릅니다. 재생불량성빈혈의 가장 대표적인 증상은 모든 혈구의 수가 줄어드는 범혈구감소증입니다. 산소를 운반하는 적혈구의 수가 감소하면 빈혈이 생기면서 쉽게 어지럽고 숨이 찹니다. 피부가 창백해지고 가슴이 두근거립니다. 외부의 감염원과 싸우는 백혈구가 줄어들면 감염에 취약해지고, 지혈을 담당하는 혈소판이 줄어들면 쉽게 멍이 들고 피가 나는 등 출혈성 경향을 보이게 됩니다.#
                                재생불량성빈혈의 원인#재생불량성빈혈은 우리 몸의 면역세포가 도리어 자신의 조혈모세포를 공격하는 자가면역성 질환입니다. 방사선에 노출되었던 경우, 특정 약물을 복용했거나 항암화학요법을 받은 경험이 있는 경우, 벤젠 같은 화학 물질에 노출된 경우가 위험 요인이 될 수 있습니다. 간염 바이러스, 엡스타인-바 바이러스 감염과 같은 감염질환이나 드물게 임신도 원인이 될 수 있습니다. 하지만 특별한 원인을 찾지 못하는 경우도 많습니다.#
                                재생불량성빈혈의 진단#재생불량성빈혈을 진단하기 위해서는 혈액검사와 골수 검사가 필요합니다. 혈액검사로 범혈구감소증을 확인합니다. 골수 검사로 골수세포 충실도의 감소 및 지방조직으로 대체된 골수 소견을 확인하고, 다른 혈액질환을 감별합니다.#
                                재생불량성빈혈의 치료#원인이 있는 재생불량성빈혈은 수혈을 통해 혈구를 보충하면서 원인을 해결합니다. 원인이 되는 약제가 있다면 사용을 중단하고, 감염을 치료합니다.
원인이 명확하지 않은 경우라면 중증도, 나이 등을 고려해 면역억제치료나 조혈모세포이식 등의 치료를 고려합니다. 재생불량성빈혈은 우리 몸의 면역세포가 자신을 스스로 공격하는 자가면역질환이기 때문에 면역억제치료를 시행하면 골수 기능이 회복되기도 합니다. 50세 미만의 중증 재생불량성빈혈 환자에서 가능한 기증자가 있다면 동종 조혈모세포이식을 시행하기도 합니다.#
								','33b10b90-b733-458a-ac1d-972ba3810f9d.png',2,to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:18:30.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('20','6','1','용혈성빈혈 [Hemolytic anemia]','용혈성빈혈 [Hemolytic anemia]','									용혈성빈혈이란?#용혈성빈혈은 적혈구의 수명이 짧아져서 생기는 빈혈입니다. 혈액 안에 들어 있는 적혈구는 몸 전체로 산소를 운반하는 역할을 합니다. 적혈구의 수명은 100~120일 정도이고, 수명을 다한 적혈구는 몸 안에서 파괴됩니다. 그런데 여러 가지 이유로 이 적혈구의 수명이 짧아지면서 적혈구가 파괴되는 용혈 현상이 일어나고, 골수가 적혈구를 열심히 생산해도 파괴되는 속도를 따라잡지 못하면 용혈성빈혈이 생깁니다.#
                                용혈성빈혈의 증상#용혈성빈혈의 원인이 되는 질환에 따라 증상은 다양하지만, 공통적으로 나타나는 증상이 있습니다. 쉽게 피곤해지고, 피부가 창백해집니다. 적혈구가 파괴되면서 나온 부산물 때문에 황달이 생기면 피부와 눈이 노랗게 변합니다. 적혈구를 파괴하고 부산물을 처리하는 비장과 간이 커지면서 배가 불편해지거나 덩어리가 만져지기도 합니다.#
                                용혈성빈혈의 원인#용혈성빈혈의 원인은 선천적인 원인과 후천적인 원인으로 나눌 수 있습니다. 선천성 질환인 낫적혈구빈혈(sickle cell anemia)이나 지중해빈혈(thalassemia)과 같은 혈액질환이 있으면, 비정상적인 적혈구가 만들어지면서 용혈성빈혈이 생깁니다. 반면 감염이나 혈액암, 자가면역질환, 약물 부작용, 인공판막 수술과 같은 후천적 요인에 의해서도 용혈성빈혈이 생길 수 있습니다. 신생아의 용혈성빈혈은 어머니와 Rh 혈액형이 맞지 않아 생기는 경우가 많습니다.#
                                용혈성빈혈의 진단#용혈성빈혈을 진단하기 위해서는 증상과 기저질환, 가족력을 확인합니다. 혈액검사로 적혈구의 수와 상태, 혈색소를 확인합니다. 용혈의 원인을 알기 위해서는 적혈구의 상태나 자가항체에 대한 자세한 검사가 필요할 수도 있습니다. 혈액에 영향을 주는 다른 질환과 감별하기 위해서 골수 검사가 필요하기도 합니다.#
                                용혈성빈혈의 치료#용혈성빈혈은 원인에 따라 중증도와 치료법이 다릅니다. 약물에 의한 것이라면 원인이 되는 약물 사용을 중단합니다. 원인이 되는 질환이 있다면 치료하고 증상을 줄여줄 수 있는 대증요법을 시행합니다. 질환에 따라서는 비장을 수술로 제거하는 것이 도움이 되기도 합니다.#
								','5b5cc034-993e-4eaa-bcf8-e848919ec114.png',2,to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:17:52.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('21','7','5','경추간판탈출증(목디스크) [Cervical disc herniation]','경추간판탈출증(목디스크) [Cervical disc herniation]','																		경추간판탈출증이란?#경추간판탈출증이란 목디스크(경추간판)가 노화되고 튀어나와 신경근을 압박해 통증을 일으키는 병입니다. 제5-6번 경추 사이와 제6-7번 경추 사이에 발생하는 목디스크가 전체의 약 88%를 차지하며, 고령이 될수록 상부 경추에 문제가 생기는 것이 특징입니다.#
                                경추간판탈출증의 기전#목디스크는 허리디스크보다 발병률이 낮습니다. 경추에는 구상돌기가 형성되어 있어서 디스크가 척추관 쪽으로 밀리는 것을 막아주며, 경추 디스크는 상대적으로 더 납작하고 단단해서 섬유륜이 찢어지면서 수핵이 탈출할 가능성이 허리디스크보다 낮기 때문입니다.#
                                경추간판탈출증의 증상#목부터 어깨까지 통증이 있으면서 관절을 움직이기 힘들고, 가슴과 팔을 따라 방사통이 나타나며, 손의 감각이 무뎌지면서 힘이 빠지는 등의 증상을 보입니다. 제4-5번 경추 사이 디스크가 손상되면 삼각근에, 제5-6번 경추 사이는 이두박근, 제6-7번 경추 사이는 요골근, 제7번 경추-제1번 흉추 사이는 삼두박근에 마비가 발생합니다. 디스크 수핵이나 골극, 골증식체가 척수를 부분적으로 압박하는 경우에는 목을 뒤로 젖힐 때 통증이 심해지고 어깨와 골반이 동시에 아프면서 다리에 힘이 빠지는 증상이 동반되기도 합니다. 또 경추 횡돌기 사이를 지나는 추골동맥이 압박될 경우에는 드물게 뇌 혈액순환 장애가 생겨 눈 뒤쪽이 아프면서 시야가 흐려지고, 귀에서 잡음이 들릴 수도 있습니다.#
                                경추간판탈출증의 진단#목디스크는 신경학적 검사와 단순 방사선촬영, MRI, 신경전도검사 등을 통해 진단합니다.#

								','43bdf0e0-99fb-4350-8bb1-c63ede0a78fa.png',19,to_timestamp('25/01/07 16:41:33.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 15:23:16.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('22','7','11','중증근무력증 [Myasthenia gravis]','중증근무력증 [Myasthenia gravis]','									중증근무력증이란?#중증근무력증은 면역체계의 이상으로 인해서 몸을 움직이기 위해 뇌가 명령한 신호가 운동신경에서 근육으로 잘 전달되지 않는 질병입니다. 운동신경이 움직이라는 명령을 내려도 근육이 반응하지 않기 때문에 중증근무력증에 걸리면 힘이 약해집니다. 대부분 눈 주변이나 팔다리의 근육이 약해지지만, 심한 경우에는 숨을 쉬는 근육이 약해지면서 호흡마비가 발생할 수도 있습니다.#
                                 중증근무력증의 증상#환자가 처음에 가장 흔하게 경험하는 증상은 겹보임과 눈꺼풀 처짐입니다. 겹보임은 TV 화면, 타인의 얼굴, 차선 등 사물이 두 개로 보이는 증상으로, 겹보임이 생기면 거리 감각이 없어지고 어지러움을 느끼기도 합니다. 눈꺼풀 처짐은 한쪽 또는 양쪽 눈꺼풀이 내려와 시야를 가리는 증상입니다.#
                                 중증근무력증의 진단#진단을 위해서는 우선 진찰을 통해 겹보임이나 눈꺼풀 처짐이 있는지, 다른 부위에 힘이 약해지는지, 힘 빠짐에 피로가 있는지 확인합니다. 피로는 팔을 양옆으로 들고 얼마나 오래 버티는지, 눈을 계속 뜨고 있을 때 눈꺼풀이 점차 내려오는지, 긴 문장을 말하면 발음이 점점 어눌해지는지 등을 살펴 확인할 수 있습니다.#
                                중증근무력증의 치료#중증근무력증은 꾸준히 치료받는 것이 중요합니다. 증상 개선 약물은 복용 후 수십 분 뒤부터 증상이 좋아지지만, 면역억제치료는 효과가 나타나기까지 수주에서 수개월이 걸립니다. 따라서 효과가 나타날 때까지 포기하지 않고 꾸준히 약을 복용해야 합니다. 필요에 따라서는 효과가 빨리 나타나는 치료(면역글로불린 주사, 혈장교환술)와 효과가 천천히 나타나는 치료(면역억제치료)를 적절히 섞어 효과를 극대화할 수도 있습니다.#
                                중증근무력증 치료의 부작용#중증근무력증 치료의 또 다른 중요한 점은 치료의 효과와 부작용을 적절히 조절해야 한다는 점입니다. 면역억제치료를 강하게 하면 빠르고 높은 치료 효과를 기대할 수 있지만, 면역억제의 부작용이 심하게 나타날 수 있습니다. 또 고용량의 스테로이드를 장기간 복용하면 고혈압, 당뇨병, 골다공증, 백내장, 체중 증가 등 다양한 부작용이 나타납니다.
따라서 증상 개선 효과가 있으면서도 부작용을 최소화할 수 있는 수준의 치료를 유지하는 것이 중요합니다. 이를 위해서는 본인의 증상에 대해 주치의와 꾸준하게 대화하고 중증근무력증의 상태를 확인하기 위해 주기적으로 검사를 받아야 합니다.#
								','f3cbfc15-d654-4306-9df8-14f168277230.png',1,to_timestamp('25/01/07 16:49:36.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:18:44.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('23','7','11','골다공증 [Osteoporosis]','골다공증 [Osteoporosis]','																		골다공증이란?#뼈는 우리 몸에서 가장 크고 무거운 기관 중 하나로, 중력을 극복하고 움직일 수 있도록 근육의 지렛대 역할을 합니다. 또 몸이 건강한 상태를 유지할 수 있도록 다양한 내분비 호르몬을 주고받습니다. 이러한 뼈의 골강도가 약화해 골절이 쉽게 발생하는 상태를 골다공증이라고 합니다.#
                                골다공증의 원인#골다공증의 가장 중요하고 흔한 원인 중 하나는 폐경입니다. 대개 50대 초반부터 중반까지 뼈의 양과 질을 유지하는 강력한 방패인 여성호르몬(에스트로겐)의 보호가 사라지면서 뼈의 양이 급격하게 감소합니다. 이후 뼈의 양과 질이 감소하는 기울기 자체는 조금 줄어들지만, 노화에 따라 골량과 골질이 지속적으로 약화되는 시기를 맞게 됩니다.
반면 남성은 여성처럼 골강도가 급격히 감소하는 시기는 없으나, 나이가 들면서 골강도가 서서히 지속적으로 감소해 70대가 되면 여성과 유사한 정도의 골강도에 이르게 됩니다. 국민건강영양조사에 따르면 국내 폐경 후 여성 10명 가운데 4명, 50세 이상 남성은 10명 중 1명이 골다공증이 있는 것으로 나타났습니다.#
골다공증의 증상#골량이 감소하더라도 통증이 나타나지 않기 때문에 골절이 발생하기 전까지는 골다공증 증상을 느끼기가 어렵습니다. 그러나 주요 골절이 한번 발생하면 회복에 오랜 시간이 걸리고, 비가역적인 기능 손상으로 이어질 수 있습니다.#
골다공증의 진단#골다공증을 진단하려면 골강도를 측정하고, 뼈가 작은 충격에도 부러질 것인지를 평가해야 합니다. 즉 골절 위험도를 바르게 평가하는 것이 골다공증 진단의 핵심입니다.
진단과 치료 방향 설정을 위해 꼼꼼한 병력 청취, 문진, 혈액검사, 소변검사, 척추 X-ray 검사, 골밀도 평가 등이 필요합니다. 첫 번째로 병력을 청취한 뒤 이전의 골절력, 가족력, 약제력 등을 종합적으로 고려해 골절 위험도를 우선 평가합니다. 혈액검사와 소변검사는 이 과정에서 혹시 놓칠 수 있는 이차성 원인을 발견해 교정하는 데 도움을 주며, 척추 X-ray 검사는 무증상 압박골절을 찾아내 골절 위험도에 반영할 수 있습니다.#
골다공증의 치료#골밀도로 진단한 골다공증 환자의 골절 위험도는 골다공증이 없는 사람보다 2배 이상 높습니다. 따라서 DXA T-점수가 –2.5 이하, QCT 요추부 3차원 골밀도가 80mg/cm3 미만일 경우에는 골절 위험도를 낮추기 위해 약물 및 비약물치료를 시행합니다. 그러나 전체 골절의 약 절반은 골밀도 수치가 골다공증 범위에 해당하지 않는 정상 및 골감소증에서 발생합니다. 즉 골밀도 수치에만 의존하면 예방 가능한 골절의 절반을 놓치는 셈입니다. 따라서 기존 골절력, 글루코코르티코이드 사용 여부, 성호르몬 상태, 거동 상태, 최근 낙상 빈도 등 임상 위험인자를 평가해 골절 위험도가 충분히 높으면 골감소증에서도 치료를 시작합니다.#

								','5a9e5c57-0292-45cb-bfdc-af51d2a32375.png',51,to_timestamp('25/01/07 16:49:36.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 15:54:26.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('24','7','9','손목터널증후군(수근관증후군) [Carpal tunnel syndrome]','손목터널증후군(수근관증후군) [Carpal tunnel syndrome]','									손목터널증후군이란?#손목터널증후군은 상지의 가장 흔한 압박성, 포착성 신경병증으로, 정중신경(median nerve)이 좁고 제한된 손목터널(수근관, carpal tunnel)을 통과할 때 압박을 받아 손 저림, 손 감각 저하 등의 증상이 발생하는 질환입니다.#
                                손목터널증후군의 증상#증상으로는 정중신경의 감각 분포에 해당하는 엄지, 검지, 중지, 약지 엄지 쪽 절반의(때때로 손바닥 전체의) 통증, 저림, 감각 이상 및 저하가 나타날 수 있으며, 이는 밤에 더 악화되어 잠에서 깨기도 합니다. 이러한 증상은 물건을 쥐거나 고정된 자세를 오래 지속할 때, 그리고 특정 손목이나 손가락의 자세에 따라 악화될 수 있습니다. 증상은 전완부나 어깨까지 근위부에도 발생할 수 있으며, 이때는 경추 디스크 질환처럼 근위부의 신경 압박성 병변의 가능성도 고려해야 합니다.#
                                손목터널증후군의 원인#손목터널증후군은 손목터널 단면이 좁아지거나 터널 내부 압력이 증가해 발생하며, 신경의 정상적인 활주가 저해되어 발생할 수 있습니다. 이러한 현상에 대한 근본적인 원인은 명확히 밝혀지지 않았지만, 종괴, 당뇨병, 폐경, 갑상선기능저하증, 비만, 관절염, 임신 등의 기계적인 원인, 외상, 염증, 호르몬 기전 등에 의해 발생할 수 있다고 알려져 있습니다.#
                                손목터널증후군의 진단#손목터널증후군의 진단은 병력, 신체 진찰, 신경전도검사 결과를 종합해 판단합니다. 임상 병력 청취와 신체검사는 선별 검사에 필수적이며, 설문지, 손 증상 도표, 팔렌 검사 또는 틴넬 징후(민감도 93%, 특이도 89%) 등이 주로 사용됩니다. 전기생리학적 검사(신경전도검사)는 손목터널을 가로지르는 신경 전도 속도의 저하와 이차적인 축삭의 손실을 측정해 임상 평가를 보완하며 민감도와 특이도는 각각 67-75%, 93-95%로 알려져 있습니다. 하지만 증상이 있는 환자에서 검사가 정상일 수 있어 단일 검사가 아닌 종합적 소견으로 판단하는 것이 중요합니다.#
                                손목터널증후군의 치료#손목터널증후군은 초기에는 물리치료 및 보조기 착용, 약물치료 등 보존적 치료를 시행하며, 코르티코스테로이드 주사는 통증과 손 기능의 개선을 보이나 장기적(6개월) 효능은 불확실합니다.#
								','fda31c78-8f00-4443-bcfa-baebd1303e45.png',2,to_timestamp('25/01/07 16:49:36.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 15:54:18.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('25','8','3','불면증 [Insomnia]','불면증 [Insomnia]','																		불면증이란?#불면증은 보통 잠이 오지 않는 것이라 생각하지만, 지나치게 일찍 잠에서 깨는 것, 자다가 깨거나 깬 이후 더 이상 잠이 들지 않는 것, 야간 수면 시간이 부족한 것, 잠은 잤지만 개운하지 않고 피로감이 느껴지는 것 등이 모두 불면증의 증상입니다. 잠을 잘 수 있는 적절한 환경이 조성되어 있는데도 이러한 증상들이 일주일에 3번 이상 나타나면 불면증을 의심해 볼 수 있습니다.#
                                불면증의 증상#① 지나치게 일찍 잠에서 깰 때
② 자다가 자꾸 깨거나 깬 이후 더 이상 잠이 들지 않을 때
③ 야간 수면 시간이 부족할 때
④ 잠은 잤지만 개운하지 않고 피로감이 느껴질 때
⑤ 부족한 수면으로 가정이나 학교, 직장에서 다음과 같은 증상을 겪을 때: 집중력과 기억력 저하, 피곤함, 무력감, 의욕 저하, 감정 조절의 어려움, 낮 시간의 졸림, 잦은 실수나 사고, 행동 문제(과다행동, 충동성, 공격성 등)#
불면증의 검사#먼저 수면 습관과 생활 습관을 알아보기 위한 면담을 거치고 다른 원인 질환이 있는지 감별하기 위해 필요한 검사를 시행합니다. 위궤양, 천식, 협심증과 같은 신체질환이나 불안장애, 우울증 등 정신과 질환, 새로운 약물 복용 혹은 중지에 따라 불면증이 발생할 수 있어서 정확히 원인을 파악하고 치료하는 것이 중요합니다. 수면다원검사는 수면무호흡, 렘수면 행동장애, 주기성 사지운동장애, 하지불안증후군 등 다른 수면장애로 의심될 때 감별을 위해 실시합니다.#
불면증의 치료#수면환경요법, 수면인지행동치료, 이완요법, 광치료 등 다양한 치료법이 있는데 이 중 가장 효과적인 방법은 수면인지행동치료입니다. 수면일기를 작성해 보도록 하고 이에 맞춰 수면 습관을 바꾸는 치료가 시행됩니다. 경우에 따라 일시적으로 약물치료를 시행하기도 합니다. 다른 원인 질환이 발견되면 이에 대한 치료를 시행하면서 불면증 치료도 함께 진행합니다.#
불면증 극복을 위한 생활 습관#우선 잠이 오지도 않는데 누워있는 일은 피해야 합니다. 만성 불면증 환자들의 수면일기를 보면 실제로 자는 시간은 3~4시간에 불과한데도 잠들기 위해 너무 애쓰느라 누워있는 시간은 7~8시간씩 되는 경우가 매우 많습니다. 이런 행동이 지속되면 자리에 눕는 순간 잠에 대한 걱정과 잡다한 생각들로 뇌가 습관적인 각성 상태에 이릅니다.
또 충분하지 못한 수면을 보충하려고 아무 때나 쪽잠을 자면 오히려 야간 수면을 방해할 수 있으므로 피해야 합니다. 더불어 자기 전 스마트폰 사용도 수면을 방해할 수 있으므로 스마트폰은 먼 곳에 두고 알람이 필요하다면 자명종을 이용하시길 권합니다.#

								','beffbb47-fb41-40c7-a987-270448265be9.png',2,to_timestamp('25/01/07 17:01:46.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:16:16.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('26','8','9','본태성 떨림(진전) [Essential tremor]','본태성 떨림(진전) [Essential tremor]','																		본태성 떨림이란?#떨림은 신체 부위가 비자발적으로 규칙적으로 진동하는 현상입니다. 중력에 반하여 특정한 자세를 취할 때 나타나는 떨림을 자세 떨림(postural tremor), 자발적으로 운동을 하는 도중 나타나는 떨림을 활동 떨림(action tremor), 편한 자세로 앉아 있거나 누워 있을 때 나타나는 떨림을 안정 떨림(resting tremor)이라고 합니다. 본태성 떨림은 파킨슨병, 근긴장이상증 등 신경계 질환의 증상 동반 없이 양측 상지에 나타나는 자세 떨림 또는 활동 떨림을 특징으로 하는 이상운동질환입니다. 이는 파킨슨병의 특징인 안정 떨림과는 매우 대조적입니다.
본태성 떨림은 40대 이상 연령대에서 호발하며, 65세 이상에서는 4%~5% 정도의 유병률을 보입니다.#
본태성 떨림의 증상#본태성 떨림은 주로 양측 상지에 발생하는데, 상지뿐만 아니라 머리나 목소리가 떨리는 경우도 있습니다. 본태성 떨림은 알코올을 섭취하면 완화되는 반면, 스트레스, 운동, 피로 등으로 악화되는 경향이 있습니다. 증상은 시간이 지날수록 악화되는 경우가 많으며, 컵을 들고, 글씨를 쓰고, 수저를 드는 것과 같은 일상생활에서 손이 심하게 떨려 어려움을 겪을 수 있습니다.#
태성 떨림의 원인#본태성 떨림이 발생하는 구체적인 원인은 아직 명확하게 밝혀지지 않았습니다. 그러나 가족 중에서 본태성 떨림을 겪은 사람이 있는 경우가 많으며, 이런 경우 가계도를 분석하면 대체로 상염색체 우성의 유전 패턴이 나타납니다.
전기생리학적 연구를 통해 대뇌 시상(thalamus)과 뇌줄기에 위치한 하올리브핵에서 소뇌로 정보를 전달하는 올리브-소뇌로(olivocerebellar circuit) 및 특정 운동 회로가 본태성 떨림과 관련되어 있다고 제안되었습니다.#
본태성 떨림의 진단#본태성 떨림은 증상을 바탕으로 진단합니다. 국제파킨슨운동질환학회의 2018년 진단 기준에 따르면 (1) 양쪽 상지의 활동 떨림, (2) 3년 이상의 유병 기간, (3) 머리, 목소리, 하체 등 다른 부위의 떨림이 동반되거나 동반되지 않음, (4) 근긴장이상(dystonia), 소뇌실조(cerebellar ataxia), 파킨슨증(parkinsonism)과 같은 다른 신경계 증상이 없을 경우에 본태성 떨림으로 진단합니다. 떨림의 양상(떨리는 부위, 떨리는 빈도, 악화 요인, 완화 요인), 동반 증상의 유무 등을 확인하는 것도 진단에 필수적입니다. 본태성 떨림의 진단 과정에서는 갑상선기능항진증, 윌슨병, 약물 유발 떨림 등 떨림의 원인이 될 수 있는 다른 질환을 감별하는 것도 중요합니다. 이를 위해 복용하고 있는 약물을 파악하고, 혈액검사나 뇌 MRI 등의 영상검사를 시행할 수 있습니다.#
본태성 떨림의 치료#일차적으로는 약물치료를 시도해 볼 수 있으며 약 50%의 환자에서 효과를 기대할 수 있습니다. 프로프라놀롤(propranolol)이라는 교감신경억제제와 프리미돈(primidone)이라는 항경련제가 가장 대표적인 약제입니다. 증상이 있는 부위에 보톡스를 주입하는 것도 도움이 될 수 있으나 효과는 일시적이며 근력 약화 등의 부작용이 있을 수 있습니다.
약물 치료로도 해결되지 않는 본태성 떨림의 경우 뇌심부자극술, 뇌정위방사선수술, 고집적초음파수술 등의 수술적 치료를 고려할 수 있습니다.#

								','9f2d8dfd-2a3d-4cb8-8488-2d65d34bcce9.png',2,to_timestamp('25/01/07 17:01:46.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:15:55.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('27','8','1','파킨슨병 [Parkinson disease]','파킨슨병 [Parkinson disease]','									파킨슨병이란?#파킨슨병은 중뇌 흑질(substantia nigra)에 있는 도파민 신경세포가 손상되면서 기저핵(basal ganglia)에 도파민 결핍이 생기고 운동 장애가 발생하는 대표적인 퇴행성 뇌질환입니다. 파킨슨병 환자들의 뇌를 부검해 보면 ‘알파시누클레인(α-synuclein)’이라는 단백질이 비정상적으로 응집되어 생긴 ‘루이소체(Lewy body)’가 발견되는데, 이 루이소체는 중뇌에만 국한되지 않고 뇌의 여러 영역으로 퍼져 나가면서 운동 장애뿐만 아니라 여러 비운동 증상들도 유발하는 것으로 알려져 있습니다.#
                                파킨슨병의 증상#파킨슨병의 주요 운동 증상으로 서동증, 안정시 떨림, 근강직, 자세 불안정 등이 있습니다. 임상적으로 서동증이 있으면서 안정시 떨림 혹은 근강직이 있을 경우 파킨슨병 진단을 고려할 수 있습니다. ‘서동증(bradykinesia)’이란 행동이 느려지는 증상으로, 팔다리에 힘이 없다고 호소하는 경우가 많으나 실제로 근력이 저하된 것은 아닙니다. 행동이 느려지면서 표정도 점차 무표정해지고 목소리와 글씨 크기도 작아집니다. ‘안정시 떨림(resting tremor)’이란 팔, 다리, 혹은 턱이 완전히 이완된 상태에서 떨리는 것을 말합니다. 물건을 집거나 무언가를 하려고 팔을 뻗을 때 떨리는 수전증 양상과는 구별이 필요합니다.#
                                파킨슨병의 원인#파킨슨병은 대부분 원인을 명확하게 알 수 없는 특발성입니다. 40-50대 젊은 나이에 발병한 경우 유전적 요인이 작용했을 가능성도 있습니다. 약물이나 뇌염, 외상, 혈관성 병변 등 어떤 특정한 원인에 의해서 파킨슨 증상이 나타날 때는 이차성 파킨슨증후군이라고 하며, 특발성 파킨슨병과 다른 임상 경과를 보이게 됩니다.#
                                파킨슨병의 진단#파킨슨병을 진단하기 위해서는 병력과 증상을 자세히 확인해야 합니다. 파킨슨 증상(서동증, 떨림, 근강직, 자세 불안정)은 다른 질환에서도 나타날 수 있기 때문에 다른 원인으로 파킨슨 증상이 나타나는 것은 아닌지(이차성 파킨슨증후군) 혹은 파킨슨병과 유사한 다른 퇴행성 뇌질환(파킨슨 플러스 증후군)은 아닌지 감별하는 것이 중요합니다. 임상적으로 파킨슨 증상을 보이는 경우에 도파민 운반체 양전자방출단층촬영(18F-FP-CIT PET 등)을 시행해 기저핵의 도파민 결핍을 확인하고 뇌 자기공명영상(MRI) 검사를 시행해 파킨슨 증상을 유발할 만한 다른 구조적 원인이 있는지 확인합니다.#
                                파킨슨병의 치료#현재로서는 파킨슨병 증상 조절을 위한 약제만이 의학적 근거가 있고, 파킨슨병의 진행을 늦추거나 원래 상태로 회복시키는 신경보호 혹은 질병조절치료는 성공한 것이 없습니다.
파킨슨 증상 조절을 위해 가장 기본이 되는 치료는 약물치료로서, 기저핵에 결핍된 도파민을 외부에서 공급해주는 것이 치료의 원리입니다. 이를 위해 가장 널리 쓰이는 약물은 레보도파 (levodopa)로서, 혈액-뇌 장벽을 통과한 후 뇌에서 도파민으로 대사됩니다. 이외에 도파민 수용체에 결합해 도파민과 유사한 효과를 나타내는 도파민 효현제(dopamine agonist), 몸 안에서 레보도파 혹은 도파민을 분해하는 효소를 억제하는 카테콜-O-메틸기전달효소(COMT) 억제제나 모노아민 산화효소(MAO) 억제제, 안정시 떨림 증상 조절을 위한 항콜린성 제제 등 다양한 약제가 있습니다.#
								','9e338247-d0f3-41a7-94c6-e206ca6652c7.png',1,to_timestamp('25/01/07 17:06:29.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:19:02.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('28','8','3','루이소체 치매 [Dementia with Lewy body]','루이소체 치매 [Dementia with Lewy body]','																		루이소체 치매란?#루이소체 치매는 알츠하이머 치매 다음으로 흔한 치매의 한 종류로서, 치매의 특징적인 증상외에 파킨슨 증상도 흔하게 동반되는 것이 특징입니다.
루이소체 치매 환자들의 뇌를 부검해 보면 ‘알파시누클레인(α-synuclein)’이라는 단백질이 비정상적으로 응집되어 생긴 ‘루이소체(Lewy body)’가 대뇌 피질 및 변연 주변 영역 구조물에서 발견되기 때문에 루이소체 치매를 파킨슨병과 더불어 “알파시누클레인 연관 퇴행성 뇌질환”이라 합니다. 또한 다수의 루이소체 치매 환자에서 대뇌 피질에 ‘아밀로이드(amyloid)’ 단백질이 응집되어 침착되어 있는 것을 발견할 수 있습니다. 한편 보통 중뇌 흑질에 축적된 루이소체는 파킨슨병에서, 대뇌 피질에 침착된 아밀로이드 단백질은 알츠하이머 치매에서 보이는 특징적인 병리 소견으로, 루이소체 치매가 파킨슨병 및 알츠하이머 치매와 병리학적으로 이어진 스펙트럼선 상에서 여러 유사한 증상을 보일 수 있음을 시사합니다.#
루이소체 치매의 증상#루이소체 치매에서 보이는 인지장애는 병의 초기부터 주의력, 전두엽 집행기능, 시공간능력 영역에서 두드러지게 장애를 보이는 소위 ‘비기억성 인지장애’가 특징입니다. 알츠하이머 치매와 비슷하게 기억력장애도 보일 수 있으나, 보통 병의 초기에는 기억력장애가 심하지 않고 병이 진행하면서 두드러지게 나타납니다.#
루이소체 치매의 원인#루이소체 치매는 다른 퇴행성 뇌질환과 마찬가지로 원인을 명확하게 알 수 없으며 특발성으로 발생합니다. 아직까지 루이소체가 어떠한 기전으로 치매 및 파킨슨 증상을 일으키는지 정확히 밝혀져 있지 않습니다.#
루이소체 치매의 진단#루이소체 치매를 진단하기 위해서는 병력과 증상을 자세히 확인해야 하며 신경학적 진찰도 필요합니다. 치매 증상과 함께 4가지 핵심 증상(인지기능의 변동, 환시, 파킨슨 증상, 렘수면 행동장애) 유무를 확인합니다. 또한 파킨슨병 진단과 마찬가지로 도파민 운반체 양전자방출단층촬영(18F-FP-CIT PET 등)을 통해 기저핵의 도파민 결핍을 확인하고 123I-MIBG 스캔을 통해 자율신경계 이상 양상을 확인할 수 있습니다.#
루이소체 치매의 치료#현재로서는 인지기능과 여러 행동심리 증상(환시, 망상, 우울증 등)의 조절을 위한 약제만이 의학적 근거가 있고, 병의 진행을 늦추거나 원래 상태로 회복시키는 신경보호 혹은 질병조절 치료는 성공한 것이 없습니다.#

								','45aa463e-f939-430c-9e01-6c4b64e09934.png',52,to_timestamp('25/01/07 17:08:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 10:20:05.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('29','9','3','경계성 인격장애 [Borderline personality disorder]','경계성 인격장애 [Borderline personality disorder]','																		경계성 인격장애란?#경계성 인격장애는 인간관계, 자아상, 감정, 충동조절에 불안정성을 가지는 인격장애입니다.
인생 내내 경계성 인격장애를 한 번이라도 겪을 확률은 6%로, 매우 흔한 질환입니다. 일반적으로 여성이 남성보다 질환을 더 많이 앓고 있는 것으로 알려져 있고, 그 비율은 3:1입니다.
경계성 인격장애와 꼭 감별해야 하는 질환은 양극성 장애입니다. 기분 동요를 특징으로 하는 양극성 장애는 일반적으로 우울하거나 붕 뜬 기분 증상의 발현 기간이 경계성 인격장애에 비해 긴 것으로 알려져 있습니다.#
경계성 인격장애의 증상#관심을 갖고 있는 상대방에게 버림받지 않기 위해 노력하며 집착하는 것이 큰 특징입니다. 하지만 지속되는 것이 아니라 상대방이 소홀해질 경우 높은 불안감을 느끼고 애인 폭행, 스토킹, 자해 시도 등 폭력적인 행동으로 이어집니다.#
경계성 인격장애의 원인#경계성 인격장애는 유전적, 신경생물학적, 정신사회적 요소가 결합해 유발되는 것으로 알려져 있습니다.
연구를 통해 경계성 인격장애가 유전적 요인이 있음을 확인했으나, 경계성 인격장애를 유발하는 특정 유전자를 확인하지는 못했습니다.
신경생물학적 요인으로는 경계성 인격장애 환자들의 뇌에서 세로토닌 분비와 관련된 문제나 해마, 편도체, 측두엽의 활동 감소가 관찰되었습니다. 하지만 이러한 변화가 양극성 인격장애를 유발하는 원인인지, 양극성 인격장애가 만드는 결과인지는 아직 뚜렷이 확인되지 않았습니다.#
경계성 인격장애의 진단(검사)#경계성 인격장애의 진단은 정신건강의학과 전문의가 환자의 상태 및 문제상황을 종합해 진단합니다.
정신질환의 진단기준인 DSM-5에서는 경계성 인격장애의 주요한 진단기준을 다음과 같이 제시합니다. 실제 혹은 상상 속에서 버림받지 않기 위해 성적, 물질적 노력을 마다하지 않는다, 과대이상화와 과소평가의 극단 사이를 반복하는 것을 특징으로 하는 불안정하고 격렬한 대인관계 양상을 띤다, 자신의 이미지 또는 자신에 대한 느낌의 현저하고 지속적인 불안정성을 가진다 등이 있습니다.
위 9가지 요인 중 5가지 이상을 충족한다면 경계성 인격장애로 진단할 수 있습니다.#

								','166c8820-d2cb-48d3-98e2-e24d41c8fc94.png',141,to_timestamp('25/01/07 17:20:28.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 15:23:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('30','9','3','알츠하이머병 [Alzheimer disease]','알츠하이머병 [Alzheimer disease]','									알츠하이머병이란?#알츠하이머병은 고령에 치매를 일으키는 가장 흔한 원인 질환입니다. 이 질환을 처음으로 소개한 독일 정신과 의사 알츠하이머 박사는 망상과 인지장애를 보이던 환자의 사후 뇌 조직을 현미경으로 관찰해 아밀로이드 플라크(amyloid plaque)와 신경섬유다발(neurofibrillary tangle)이라는 특징적인 뇌 조직 소견을 기술했고, 이는 지금까지도 알츠하이머병을 진단하는 기준이 되고 있습니다. 즉 알츠하이머병은 인지기능 상태에 따라 진단하는 것이 아니라, 특징적인 뇌 조직 소견으로 진단합니다. 한동안 ’알츠하이머형 치매’라는 용어를 사용하기도 했는데, 이는 치매 상태에 이르게 된 이유가 알츠하이머병으로 추정된다는 뜻입니다. 과거엔 사후 뇌 부검 외에는 알츠하이머병이라고 확신할 방법이 없었기 때문입니다.#
                                알츠하이머병의 증상#대표적인 증상은 서서히 진행되는 인지기능 저하입니다. 기억장애, 반복 질문, 표현이나 이해가 어려운 언어장애, 계산장애, 길 찾기와 얼굴 알아보는 것에 대한 어려움, 일의 순서가 뒤죽박죽되는 집행기능 장애 등이 나타납니다. 기억력은 최근 경험한 일일수록 오히려 기억을 더 못하는 특징을 보이는데, 새로운 정보의 입력이 잘 안 되고, 예전의 정보는 이미 잘 저장되어 있기 때문입니다. 가끔 환자들이 잠에서 깨어 혼란 가운데 ‘내 집으로 가야 한다’고 말하는 이유는 몇 년 전 이사 온 현재의 집보다 과거에 오랫동안 거주했던 집에 대한 기억이 뇌에 더 견고하게 저장되어 있기 때문입니다.#
                                알츠하이머병의 원인#알츠하이머병의 대표적인 두 가지 뇌 조직 병리 소견은 아밀로이드 플라크(amyloid plaque)와 신경섬유다발(neurofibrillary tangle)입니다. 아밀로이드 플라크는 아밀로이드라는 작은 단백질이 정상적으로 분해되지 않고 뭉쳐진 미세 덩어리로 뇌 조직에 염증과 손상을 일으킵니다. 신경섬유다발은 타우(tau)라는 단백질이 세포 안에 뭉친 것으로 신경세포의 신호전달 능력을 떨어뜨리고 결국 뇌세포를 사멸시킵니다. 이러한 뇌 조직의 변화로 알츠하이머병 초기에는경미한 기억력장애가 나타나며, 아밀로이드 플라크나 신경섬유다발의 영향을 받는 뇌 영역이 점점 늘어나면서 다양한 심리행동 증상이 발생하고 인지기능 장애는 점차 심해집니다.#
                                알츠하이머병의 진단#확진하는 방법은 뇌 조직 검사에서 아밀로이드 플라크와 타우 신경섬유다발의 존재를 증명하는 것입니다. 하지만 살아있는 사람에게 뇌 조직 검사를 하는 경우는 거의 없고, 대신 플라크와 타우 신경섬유다발에 결합하는 방사성물질을 주사한 후, 이들이 뇌에서 결합하기를 기다렸다가 영상을 얻는 아밀로이드 혹은 타우 PET 등을 시행해 검사합니다. 최근에는 혈액 내에 아밀로이드와 타우를 검출하는 기술이 상당히 발전해 혈액으로 알츠하이머병을 진단, 분류하는 기술도 시도되고 있습니다.#
								','b7418579-850d-4d58-a64b-ca583cc14484.png',3,to_timestamp('25/01/07 17:20:34.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 11:46:13.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('31','9','3','섭식장애 [Eating disorder]','섭식장애 [Eating disorder]','																		섭식장애란?#섭식장애란 체형과 체중에 대한 지나친 가치 부여로 인해 이상 식이 습관을 보이는 질환입니다. 1) 지나치게 저체중 상태를 유지하고자 노력하는 신경성 식욕부진증(거식증)과 2) 반복적으로 통제력을 잃고 짧은 시간 동안 분명하게 많은 양의 음식을 먹는 폭식 삽화와 구토나 과도한 운동 등 극단적인 체중조절을 위한 행위가 반복되는 신경성 폭식증(폭식증) 크게 두 가지 질환으로 분류합니다. 두 질환은 정신병리나 심각성 측면에서 매우 유사하며, 두 질환 간 진단의 이동이 가능하다는 점이 특징적입니다. 섭식장애는 젊은 여성에서 빈번하게 발생합니다.#
                                섭식장애의 증상#체중과 체형에 대한 지나친 가치 부여: 여러 가지 가치 중에서도 유독 몸매나 체중에 지나치게 가치를 부여하고 집착하는 모습을 보입니다.저체중 혹은 정상 체중임에도 불구하고 본인의 몸무게나 외모를 왜곡해 받아들여 스스로 뚱뚱하다고 생각하고 이로 인해 계속해서 체중 감량에 대한 압박감을 느낍니다.#
                                섭식장애의 원인#신경성 식욕부진증은 유전적 영향력이 특히 높은 편이며, 도파민, 세로토닌, 노르에피네프린 체계의 이상이 병리와 관계가 있는 것으로 알려져 있습니다. 심리적으로는 자신감 저하, 위험회피 성향, 자기 비판적이고 완벽주의적 성향, 우울, 불안 등이 관련이 높고, 이외에도 날씬함을 추구하는 사회적인 분위기와 가족 간의 불화, 트라우마 등이 발병 요소로 작용합니다.#
                                섭식장애의 진단#신경성 식욕부진증: 식사량을 엄격하게 제한해 지나친 저체중 상태를 유지하고, 저체중 상태임에도 살이 찌는 것에 대한 극심한 두려움을 경험하고, 스스로의 체중이나 체형에 대한 왜곡을 경험하는 경우가 3개월 이상 지속되는 경우.신경성 폭식증: 빈번한 폭식과 함께 폭식을 만회하기 위한 구토, 변비약 사용, 단식, 지나친 운동 등의 부적절한 보상행동을 동반하며, 이러한 폭식과 보상행동이 적어도 1주일에 1회 이상 3개월 이상 지속되는 경우.#
                                섭식장애의 치료#신경성 식욕부진증에서 가장 중요한 것은 우선 영양결핍 상태로 인한 내과적 합병증을 잘 파악하고 건강을 회복하는 것입니다. 이후에 신경성 식욕부진증과 신경성 폭식증 모두에서 가장 중요한 치료는 인지행동치료입니다. 인지행동치료는 섭식장애의 기저에서 상호복합적으로 작용해 이 병을 지속시키는 생각, 감정, 행동, 신체적 느낌들을 이해하고, 더 나아가 이런 부정적인 사고와 행동을 수정할 수 있도록 돕고 이상 식이 습관을 교정해 나가는 치료입니다. 또한 세로토닌을 조절하는 항우울제 등의 약물치료는 폭식 행위를 줄여줄 뿐 아니라 동반된 우울, 불안 증상 호전을 위해서도 사용됩니다.#

								','6c930804-5773-4fc6-b37a-87dce0a9d054.png',2,to_timestamp('25/01/07 17:20:34.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:16:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('32','9','3','우울장애(우울증) [Depressive disorder]','우울장애(우울증) [Depressive disorder]','									우울장애란?#우울장애는 우울증이라고도 불리며, 우울감과 의욕 저하가 지속되어 일상생활에 지장을 주는 질환입니다. 우울장애는 매우 흔한 질환으로서, 특히 다른 신체 질환이나 정신의학적 질환이 있는 환자에게서도 자주 나타납니다. 주요우울장애, 지속성우울장애, 산후우울증 등을 포함해 다양한 종류가 있습니다.
우울감은 인간이라면 누구나 느낄 수 있는 자연스러운 감정이고 사회적으로 우울증과 우울감을 혼용해 자주 사용하기도 하지만, 우울장애는 의학적으로는 명확히 정의되는 하나의 질환 개념입니다.#
우울장애의 증상#기본적으로 우울감을 느끼며 삶에 대한 흥미와 의욕이 감소합니다. 이에 따라 무기력감을 자주 느끼고, 자살사고(자살을 생각하는 것)가 나타나기도 합니다. 집중력과 기억력이 감소할 수 있습니다.
또한 신체 증상들이 발현될 수 있습니다. 수면장애(불면증)가 나타나거나 식욕이 증가 또는 감소해 체중이 변화하고, 환각을 겪을 수 있습니다.#
우울장애의 원인#우울장애의 정확한 원인은 밝혀지지 않았으나, 세로토닌, 멜라토닌, 도파민, 노르에피네프린과 같은 신경전달물질들이 관련이 있다고 알려져 있습니다. 호르몬의 불균형, 생활습관, 주변환경, 개인의 성격 등이 질환의 발생에 복합적으로 작용합니다.#
우울장애의 진단#환자의 병력을 청취하고 상황을 분석해 다음 기준에 부합할 경우 우울장애로 진단합니다. 우선 우울한 기분, 흥미나 즐거움의 감소, 체중 변화, 수면 이상, 정신운동 이상, 피로, 무가치감 및 부적절한 죄책감, 집중력 저하, 자살사고의 9가지 증상과 관련해 각각 구체적인 기준이 존재하며, 이들 중 5가지 이상이 2주일 이상 지속되고 이전과 기능적인 차이가 나타나야 합니다.#
우울장애의 치료#대표적으로 약물치료와 심리치료가 있으며, 두 치료를 병행하는 경우가 많습니다. 치료를 진행하는 거의 모든 경우 약물치료를 시행하게 되며, 선택적 세로토닌 재흡수 억제제, 선택적 노르에피네프린 억제제, 삼환계 항우울제와 같은 항우울제를 복용합니다. 여기에 추가하여 인지행동치료와 같은 심리치료를 진행하면 환자가 우울감이나 다른 부정적 감정을 이겨내는 것에 도움을 주고 재발 가능성을 낮출 수 있습니다. 이외에도 전기경련요법이나 경두개자기자극술과 같은 치료법이 존재합니다.#
								','b05009bc-1b3d-4e0d-a295-834803d5def6.png',2,to_timestamp('25/01/07 17:20:34.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 00:18:06.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_BOARD (DISEASE_BOARD_ID,DISEASE_PART_ID,BODY_PART_ID,DISEASE_NAME,TITLE,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('74','2','3','담낭암2 [담낭암2영어]','담낭암2 [담낭암2영어]','담낭암이란?#담낭암입니다.','cf31f1e5-5e3e-43b4-8c1d-e64831ca7130.jpg',2,to_timestamp('25/02/06 16:18:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 16:18:32.000000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('2','순환기 질환',to_timestamp('25/01/02 10:05:42.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/07 10:13:18.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('3','내분비 질환',to_timestamp('25/01/02 10:05:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('4','귀, 눈, 코, 입 질환',to_timestamp('25/01/02 10:05:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('5','소화기 질환',to_timestamp('25/01/02 10:05:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('6','혈액장애',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('7','근골격 질환',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('8','신경학적 질환',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('9','정신과 질환',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('10','호흡기 질환',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('11','피부과 질환',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.DISEASE_CLASSIFICATION (DISEASE_PART_ID,DISEASE_PART_NAME,CREATED_AT,UPDATED_AT) values ('12','비교기과 질환',to_timestamp('25/01/02 10:05:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
REM INSERTING into PROJECT_HOSPITAL.EXAMINATION_BOARD
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('1','6','흉부 CT 검사','흉부 CT 검사(전산화단층촬영)는 가슴 속의 폐와 기관지를 X선으로 촬영하는 검사예요. 일반 X선 촬영과는 달리 김밥 자르듯이 가로 방향으로 촬영해 가슴 속의 장기를 자세히 관찰할 수 있다는 장점이 있어요. 또 조사되는 방사선의 양은 매우 적어 안전하죠. 

  흉부 CT 검사는 기침이나 가래, 흉통 등의 증상이 있을 때 할 수 있어요. 흉부의 질병이 의심될 때 할 수 있어요. 진단할 수 있는 질병은 폐암, 폐결핵, 폐렴, 폐기종, 기관지확장증, 늑막염이 있어요. 종양 치료를 하고 난 뒤 치료효과를 알기 위해 검사하기도 해요.',null,3,to_timestamp('25/01/02 17:46:57.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/02 20:14:16.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('2','6','폐 기능 검사',' 숨을 쉬고 내뱉는 호흡은 생명을 유지하는데 빠뜨릴 수 없는 중요한 활동이에요. 호흡을 통해 들어온 공기는 폐에서 가스교환이 이루어져요. 숨쉬는 기능을 담당하고 있는 폐가 적절히 기능하고 있는지, 기도로 숨이 들어오고 나오는 과정에서 이상은 없는지 측정할 수 있는 검사가 폐 기능 검사에요. 검사를 통해 호흡기질환을 진단할 수 있어요. 호흡기약물의 치료 반응 평가, 호흡기질환 환자의 치료 예후 관찰, 수술 전 마취의 위험성을 평가하는 목적으로도 시행해요. 



  검사 전 준비사항으로 검사 4시간 전부터 흡연하지 않아야 해요. 기관지확장흡입제를 사용 중이라면 검사 결과에 영향을 미칠 수 있으므로 의사와 상의하여 검사 전 미리 중단해주세요. 감기약도 결과에 영향을 줄 수 있으니 복용 전 의료진에게 확인해주세요. 호흡 시 가슴통증이 있거나, 감기가 걸렸을 때, 최근 심근경색이나 심부전이 있었을 때는 검사를 할 수 없으니 검사를 계획 시 의료진에게 알려주세요.',null,0,to_timestamp('25/01/02 17:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('3','6','기관지 내시경검사','기관지 내시경검사는 카메라가 달린 가는 관을 입을 통해 넣어 기관지와 폐를 직접 관찰하는 검사에요. 내시경을 통해 직접 기관지를 관찰하면서 암세포가 의심되는 부위에서 직접 조직검사하고, 기도로 들어간 이물질도 제거하고, 병변을 문질러 얻은 검체로 균을 배양하여 호흡기 질환을 진단할 수 있어요. 장기간 기침과 객혈을 하거나 흉부 X선검사에서 이상소견을 발견했을 때 정확한 감별을 위해 기관지 내시경검사를 하며, 기관지 협착, 폐암이 의심 될 때에도 시행해요.  



  검사 전 준비 사항은 특별히 없으나, 검사 전날 자정부터 금식해주세요. 입을 통해 기구를 삽입하기때문에 검사 중 음식물이 기도로 넘어가는 것을 예방하기 위해서 금식을 해요. 전날 저녁 식사는 평소처럼 하세요. 금식을 하므로 검사 당일 아침에 당뇨약은 드시면 안돼요. 혈압약의 경우, 조금의 물과 함께 아침 일찍 복용해도 돼요.

  검사실에 도착하면 검사 시작 전 약물을 투여할 거에요. 기관지 내 점액 분비를 억제하는 약과 긴장감을 줄여주고 근육 이완을 위한 안정제를 투여해요. 기구를 입으로 삽입하기 전, 목 부위를 스프레이 마취제로 국소마취해요. 마취가 되면 목 안이 붓는 느낌을 받을 수 있어요. 마취 후 기관지경을 삽입하여 성대와 기관지 내부를 관찰하여 좁아지거나 출혈이 있는지 또는 울퉁불퉁한 표면과 덩어리를 발견할 수 있어요. 

',null,0,to_timestamp('25/01/02 17:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('4','6','객담 세포 병리검사',' 객담 세포 병리검사는 뱉어낸 가래의 성분을 현미경으로 검사하여 비정상세포가 있는지 확인하는 검사에요. 기도, 기관지, 폐에서 생성된 점액으로 이루어진 분비물인 가래에는 떨어져 나온 세포와 세균, 바이러스, 이물질이 섞여 있어요. 비정상세포가 확인되면, 폐암을 조기발견 할 수 있어요. 폐암은 가래 속에 암세포가 배출되는 경우도 많아, 폐암 진단검사로 객담 세포 병리검사를 활용해요.



  검사를 위해 병원에서 검사 용기(가래통) 3개를 줄 거에요. 제공받은 검사 용기에 1일 1통씩, 3일 연속 가래를 뱉으면 돼요. 자고 일어난 직후 바로 뱉는 것이 좋아요. 가래 뱉기 전에 입을 가볍게 물로 헹궈 입 안 이물질을 제거 후 검사하세요. 가래는 강한 기침을 하여 검사 용기 안으로 직접 수집하세요. 채집이 끝나면 검사 용기의 뚜껑을 닫고, 마르지 않게 고정액과 섞이도록 잘 흔들어 보관하세요. 정확한 결과를 위해 오염되지 않도록 주의하며, 세균번식하지 않도록 냉장보관하여야 해요.

  이 과정을 3번 반복하여 주어진 검사 용기에 수집이 끝나면 병원에 제출하시면 돼요. 암세포가 매번 섞여있는 것이 아니기 때문에 3번 반복 검사하게 됩니다. 검사 결과에서 이상소견이 나오는 경우, 추가검사를 할 수 있어요.',null,5,to_timestamp('25/01/02 17:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 15:17:45.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('5','2','수면다원 검사','  수면다원 검사는 수면무호흡증후군 진단을 위해 시행하는 검사에요. 수면무호흡으로 인해 불면증, 수면장애, 심한 두통을 호소하는 경우, 검사를 통해 수면 패턴을 확인할 수 있어요. 특정한 이유 없이 낮 동안 졸음이 쏟아지거나 만성적인 피로를 호소하는 경우에도 의료진과 상의하여 검사를 시행해요. 



  검사는 수면 중 일어나는 여러 신체활동을 검사해요. 수면 중에 발생하는 눈동자 움직임, 다리 근육 움직임, 혈중 산소포화도, 호흡 양상, 심전도, 뇌파 변화를 센서로 측정하여 기록해요. 수면 중 이루어지는 검사이므로 검사 당일 병원 검사실에서 하룻밤 자면서 검사가 이루어져요.

  검사 준비사항으로는 검사 당일 낮잠을 자지 마세요. 수면에 방해가 되는 알코올, 카페인, 진정제, 각성제는 검사 24시간 전부터 복용하지 마세요. 평상시처럼 수면해야 정확한 검사 결과가 나와요. 잠자리가 예민한 경우, 평소 사용하는 잠옷이나 베개를 챙겨와 검사해도 돼요. 저녁 식사를 하고, 오후 7~8시경까지 검사실로 오세요. ',null,0,to_timestamp('25/01/02 17:51:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('6','2','코르티솔','코르티솔(Cortisol)은 부신 피질에서 분비되는 호르몬이에요. 뇌하수체의 부신피질자극호르몬(ACTH)에 의해 조절되요. 체내 혈당 생성, 기초 대사 유지, 지방 합성 억제, 항염증 작용, 항알레르기 작용 및 스트레스에 대응하는 역할을 해요. 코르티솔 검사를 통해 부신 기능 부전이나 쿠싱증후군 진단을 내릴 수 있어요.

  코르티솔 수치가 높아지면 보름달형 얼굴(moon face)이 나타나고, 몸통이나 목 뒤에 지방이 축적되어 두꺼워지거나, 수염이 짙고 많아지며, 피부가 얇아 멍이 잘 들고 안면홍조가 나타나는 등 신체적 특징이 나타나요. 치료를 위해 스테로이드를 장기 복용했을 때도 같은 증상이 나타날 수 있으며, ‘쿠싱증후군’을 의심해요.



  검사는 보통 팔의 혈관에서 채혈해요. 검사 당일 평소처럼 식사해도 돼요. 주사 바늘 삽입 시 통증이 있어요. 채혈이 끝나면 지혈될 때까지 눌러준 후, 반창고를 붙여요.

  검사 결과 2.5~15.5㎍/dL가 정상 범위에요. 코르티솔은 하루 중에도 수치 변동이 커요. 보통 아침 7~9시 사이에 채혈하는 것을 권해요. 이른 아침에 가장 높고, 저녁에는 오전 수치의 절반, 밤 늦게는 1/4까지 수치 변동이 발생하므로, 검사가 진행된 시간도 결과 해석할 때 중요해요. 또한 식사 후, 운동 후, 스트레스에 의해 상승할 수 있어요. ',null,0,to_timestamp('25/01/02 17:51:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('7','2','요추천자검사(뇌척수액 검사)','  요추천자검사는 신경계 질환을 진단하기 위해 시행하는 검사에요. 허리뼈 사이로 의사가 바늘을 찔러 뇌척수액을 얻어 검사해요. 뽑아낸 뇌척수액을 검사하여 염증이 있는지, 암이 침범했는지 알 수 있어요. 뇌압 측정도 가능하여 뇌압이 상승했는지 감소했는지 확인할 수 있어요. 뇌척수액은 뇌를 싸고 있는 막의 이상 여부나 영상검사에서 찾아낼 수 없는 출혈을 진단하는데 도움이 돼요. 일반적으로 극심한 두통, 구토와 함께 고열 증상으로 뇌나 수막에 염증이 의심되는 상황에서 뇌척수액 검사를 하여 판별해요. 또한 요추천자검사는 질병의 진단 뿐 아니라 뇌척수강 내로 약물을 주입하거나, 뇌척수액의 배액 등 치료적 목적으로도 시행해요. 



  검사 전 특별한 주의사항은 없으나, 검사가 끝난 후 오랜 시간 누워있어야 하므로 화장실을 미리 다녀오세요. 검사는 30분 정도 소요되요. 

  침대에서 의료진쪽으로 등이 보이게 옆으로 돌아누운 후, 다리를 모아 몸 쪽으로 당기고 머리를 최대한 구부려 무릎과 닿도록 자세를 취해주세요. 검사하는 동안 같은 자세로 유지해야 하므로, 불편하지 않게 자세를 잡아주세요. 검사 부위를 소독하고 국소마취 해요. 의사가 허리의 3~4번 척추 사이 공간으로 긴 바늘을 삽입할 거에요. 척추 사이로 바늘이 들어가므로 최대한 움직이지 않아야 해요. 검사 중 불편하다면 의사에게 불편함을 알려주세요. 바늘이 몸 안에 들어가 있기 때문에 몸을 함부로 트는 것은 신경을 건드릴 수 있어 위험해요. 바늘이 올바른 위치에 삽입이 되면 뇌척수압을 측정한 후, 검체 튜브에 뇌척수액을 담아 검사를 보내요. 뇌척수압이 200mmH2O 이상일 경우, 출혈, 감염, 부종을 의심할 수 있어요. 약물 주입 목적으로 천자한 경우, 삽입한 바늘을 통하여 주입해요. 검사나 치료가 끝나면, 바늘을 제거하고 검사 부위에 균이 들어가지 않도록 소독하고 멸균 거즈를 붙여 마무리해요.',null,0,to_timestamp('25/01/02 17:51:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('8','3','수면다원 검사','수면다원 검사는 수면무호흡증후군 진단을 위해 시행하는 검사에요. 수면무호흡으로 인해 불면증, 수면장애, 심한 두통을 호소하는 경우, 검사를 통해 수면 패턴을 확인할 수 있어요. 특정한 이유 없이 낮 동안 졸음이 쏟아지거나 만성적인 피로를 호소하는 경우에도 의료진과 상의하여 검사를 시행해요. 



  검사는 수면 중 일어나는 여러 신체활동을 검사해요. 수면 중에 발생하는 눈동자 움직임, 다리 근육 움직임, 혈중 산소포화도, 호흡 양상, 심전도, 뇌파 변화를 센서로 측정하여 기록해요. 수면 중 이루어지는 검사이므로 검사 당일 병원 검사실에서 하룻밤 자면서 검사가 이루어져요.

  검사 준비사항으로는 검사 당일 낮잠을 자지 마세요. 수면에 방해가 되는 알코올, 카페인, 진정제, 각성제는 검사 24시간 전부터 복용하지 마세요. 평상시처럼 수면해야 정확한 검사 결과가 나와요. 잠자리가 예민한 경우, 평소 사용하는 잠옷이나 베개를 챙겨와 검사해도 돼요. 저녁 식사를 하고, 오후 7~8시경까지 검사실로 오세요. ',null,0,to_timestamp('25/01/02 17:54:10.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('9','3','뇌파검사','  뇌는 끊임없이 전기적 신호(뇌파)를 보내며 활동을 해요. 뇌가 보내는 미세한 신호를 증폭하여 측정해서 그래프로 기록하여 뇌 건강을 확인하는 검사가 뇌파검사(EEG)에요. 깨어있는 상태와 잠을 잘 때 모두 시행 가능해요. 어린 아이의 경우, 검사 협조가 어려워 주로 수면 뇌파를 측정해요. 

  뇌파검사는 발작의 종류에 따라 특징적인 그래프 파형을 보여 간질발작을 진단하는데 중요한 검사에요. 또한, 뇌졸중, 뇌동맥경화증, 뇌혈관질환, 뇌염, 뇌종양 등 뇌의 여러 질환을 진단할 때도 시행해요. 머리 외상을 입었을 때, 뇌조직이 파괴되지는 않았으나 기능저하가 보일 때에도 뇌파검사로 뇌의 기능적 이상을 알 수 있어요. 



  검사방법은 두피에 일정한 간격으로 10여개의 전극을 붙이고 똑바로 누워 뇌파를 측정해요. 뇌파검사는 편안히 누워 안정 시 뇌파를 측정하고, 눈을 깜박이거나, 심호흡을 하거나, 빛 자극을 주었을 때, 그림을 볼 때, 간단한 계산을 할 때와 같이 특정 상황에서 유발되는 반응을 함께 검사해요. 움직임에 예민한 검사로 정확한 결과를 얻기 위해서는 되도록 움직이지 않는 것이 좋아요. 검사 도중 잠이 오면 자도 괜찮아요. 검사 시간은 보통 30분 정도 소요되요. 수면 시 뇌파를 측정하기 위해 수면제로 수면을 유도한 후 검사하거나, 검사실에서 하룻밤 잠을 자면서 검사하기도 해요.',null,1,to_timestamp('25/01/02 17:54:10.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 09:45:45.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('10','4','평형 기능검사','평형 기능검사는 현기증이 있을 때 원인을 찾기 위해 시행하는 검사에요. 평형기능을 담당하는 것은 귀 안, 전정기관의 문제가 있을 수 있고, 심장이나 소화기관, 안구질환일 수 있어요. 주위가 빙빙 도는 느낌이 나거나, 흔들거리는 느낌, 중심 잡기가 어렵고 구토가 나거나 구역질, 두통이 나타나면 검사를 받아야 해요.

  검사를 위해 병원으로 올 때는 하이힐보다는 뒤꿈치가 낮은 신발을 신고 불편하지 않도록 바지를 입어주세요. 검사 전에는 콘택트렌즈를 제거하고 어지럼증과 관련된 약물(아스피린, 감기약, 항히스타민제)은 2일정도 먹지않도록 하고, 멀미약도 먹지 않도록 하세요. 알코올이나 카페인이 포함된 음료도 멀리해주세요. ',null,0,to_timestamp('25/01/02 17:56:37.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('11','4','안압검사(안저검사)',' 혈관의 압력을 혈압이라고 부르는 것처럼 안구의 압력을 안압이라고 해요. 안압검사는 안구안에 차있는 액(방수)의 압력을 측정하는 검사에요. 개인마다 차이가 있지만, 안압의 정상범위는 10~20mmHg이에요. 압력이 낮을 경우 안구가 쪼그라들고 높을 경우 녹내장을 의심하지요. 안압검사는 녹내장을 발견할 수 있는 기초적인 검사에요. 

  안압검사는 비접촉식 공기 안압계가 간단해서 많이 이용되고 있어요. 검사대에 턱을 대면 공기가 안구 표면에 분사되어 패인 정도로 안압을 측정하는 방법이에요. 자세한 검사가 필요할 때는 눈에 마취 약물을 점안하고 골드만 안압계라는 기구를 이용해서 직접 측정하는 방법을 이용해요. 

  안압검사로 충분하지 않을 경우 안저검사도 함께 받게 돼요. 안저검사는 안구의 안쪽 유리체, 망막과 망막혈관, 맥락막, 시신경유두의 이상을 확인하는 검사에요. 녹내장을 진단하는 것은 물론 황반변성, 당뇨망막병증까지 대표적 3가지를 확인할 수 있어요. 망막박리와 안저출혈도 볼 수 있고 고혈압으로 인한 망막 손상도 확인할 수 있어요. 안압이 높아지면 눈 통증, 충혈, 두통, 구역질의 증상이 나타나는데 지나치지 말고 검사를 받아야 해요.',null,0,to_timestamp('25/01/02 17:56:37.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('12','4','시력검사',' 사물이 잘 보이지 않거나 이중으로 보일 때 가장 먼저 시력검사를 해보지요. 시력검사는 시력을 측정하고, 근시, 노안, 난시, 안구 질환을 검사하기 위한 가장 기초적인 검사에요. 시력 이상이 발생하는 질환으로 각막에 발생한 헤르페스나 각막염, 수정체가 혼탁한 백내장, 안압이 상승한 녹내장이 있어요. 또 망막출혈, 망막박리, 시신경 이상이 나타나도 시력에 변화가 나타나지요. 

  검사는 시력검사용 도구로 한쪽 눈씩 가리고 5~6m 떨어진 거리에서 시력검사표를 읽어요. 가장 위부터 아래로 읽어가고, 해당 줄의 반 이상의 문자나 기호를 읽을 때 올바로 읽은 것으로 평가해요. 검사시간은 5~10분정도로 짧아요. 굴절검사로 눈의 초점이 맺히는 위치를 보고 근시, 노안, 난시를 확인하는 검사도 함께 해요.',null,0,to_timestamp('25/01/02 17:56:37.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('13','5','기관지 내시경검사','기관지 내시경검사는 카메라가 달린 가는 관을 입을 통해 넣어 기관지와 폐를 직접 관찰하는 검사에요. 내시경을 통해 직접 기관지를 관찰하면서 암세포가 의심되는 부위에서 직접 조직검사하고, 기도로 들어간 이물질도 제거하고, 병변을 문질러 얻은 검체로 균을 배양하여 호흡기 질환을 진단할 수 있어요. 장기간 기침과 객혈을 하거나 흉부 X선검사에서 이상소견을 발견했을 때 정확한 감별을 위해 기관지 내시경검사를 하며, 기관지 협착, 폐암이 의심 될 때에도 시행해요.  



  검사 전 준비 사항은 특별히 없으나, 검사 전날 자정부터 금식해주세요. 입을 통해 기구를 삽입하기때문에 검사 중 음식물이 기도로 넘어가는 것을 예방하기 위해서 금식을 해요. 전날 저녁 식사는 평소처럼 하세요. 금식을 하므로 검사 당일 아침에 당뇨약은 드시면 안돼요. 혈압약의 경우, 조금의 물과 함께 아침 일찍 복용해도 돼요.

  검사실에 도착하면 검사 시작 전 약물을 투여할 거에요. 기관지 내 점액 분비를 억제하는 약과 긴장감을 줄여주고 근육 이완을 위한 안정제를 투여해요. 기구를 입으로 삽입하기 전, 목 부위를 스프레이 마취제로 국소마취해요. 마취가 되면 목 안이 붓는 느낌을 받을 수 있어요. 마취 후 기관지경을 삽입하여 성대와 기관지 내부를 관찰하여 좁아지거나 출혈이 있는지 또는 울퉁불퉁한 표면과 덩어리를 발견할 수 있어요. ',null,0,to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('14','5','객담 세포 병리검사','객담 세포 병리검사는 뱉어낸 가래의 성분을 현미경으로 검사하여 비정상세포가 있는지 확인하는 검사에요. 기도, 기관지, 폐에서 생성된 점액으로 이루어진 분비물인 가래에는 떨어져 나온 세포와 세균, 바이러스, 이물질이 섞여 있어요. 비정상세포가 확인되면, 폐암을 조기발견 할 수 있어요. 폐암은 가래 속에 암세포가 배출되는 경우도 많아, 폐암 진단검사로 객담 세포 병리검사를 활용해요.



  검사를 위해 병원에서 검사 용기(가래통) 3개를 줄 거에요. 제공받은 검사 용기에 1일 1통씩, 3일 연속 가래를 뱉으면 돼요. 자고 일어난 직후 바로 뱉는 것이 좋아요. 가래 뱉기 전에 입을 가볍게 물로 헹궈 입 안 이물질을 제거 후 검사하세요. 가래는 강한 기침을 하여 검사 용기 안으로 직접 수집하세요. 채집이 끝나면 검사 용기의 뚜껑을 닫고, 마르지 않게 고정액과 섞이도록 잘 흔들어 보관하세요. 정확한 결과를 위해 오염되지 않도록 주의하며, 세균번식하지 않도록 냉장보관하여야 해요.

  이 과정을 3번 반복하여 주어진 검사 용기에 수집이 끝나면 병원에 제출하시면 돼요. 암세포가 매번 섞여있는 것이 아니기 때문에 3번 반복 검사하게 됩니다. 검사 결과에서 이상소견이 나오는 경우, 추가검사를 할 수 있어요.',null,2,to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 15:23:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('15','5','부갑상선호르몬','부갑상선은 갑상선 뒤쪽에 위치하는 쌀알 크기로 4개 존재하는 작은 기관으로 부갑상선호르몬(Parathyroid Hormone, PTH)을 분비해요. 부갑상선호르몬(PTH)은 뼈에서 칼슘을 흡수하고, 신장에서 칼슘 배출을 억제하여 혈중 칼슘 농도를 조절해요. 또한 신장에서 인(P)과 중탄산이온의 재흡수를 억제하고, 비타민D 생산을 증가시켜 장을 통한 칼슘 흡수를 촉진시켜요. 

  부갑상선호르몬(PTH)은 혈중 칼슘 농도가 변동이 있을 때 검사해요. 칼슘 수치 변화가 뼈, 신장, 장, 비타민 D, 부갑상선 중 원인이 무엇인지 감별하기 위해 검사가 필요해요. 



  검사는 보통 팔의 혈관에서 채혈해요. 검사 당일 평소처럼 식사해도 돼요. 주사 바늘 삽입 시 통증이 있어요. 채혈이 끝나면 지혈될 때까지 눌러준 후, 반창고를 붙여요. 

  검사 결과 15~65pg/mL 가 정상범위예요. 검사 결과 칼슘 농도가 높을 때 부갑상선호르몬(PTH) 결과도 높다면 원발성 부갑상선기능항진증을 의심해요. 갑상선 초음파(링크바로가기) 검사를 통해 부갑상선이 커져 있는지 관찰하여 확진해요. 신부전이나 비타민D결핍증이 있을 때에도 부갑상선호르몬(PTH) 수치는 올라가요. ',null,0,to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('16','5','갑상선호르몬','									갑상선은 목 앞에 위치하는 작은 내분비기관으로 갑상선 호르몬을 분비해요. 갑상선호르몬 검사를 시행하여 수치를 확인하면 갑상선의 기능을 평가할 수 있어요. 갑상선호르몬(Thyroid Hormone)은 단백질 합성 촉진, 당 대사 조절, 성장 촉진 등 신체 대사에 관여하며 T4(티록신), T3(삼요오드티로닌) 2종류가 존재해요.



  검사는 보통 팔의 혈관에서 채혈해요. 검사 당일 평소처럼 식사해도 돼요. 주사 바늘 삽입 시 통증이 있어요. 채혈이 끝나면 지혈될 때까지 눌러준 후, 반창고를 붙여요. 

  검사 결과 T4(티록신)는 6.6~13.8㎕/dL, T3(삼요오드티로닌)은 60~181ng/dL 가 정상범위예요. 범위를 벗어났다면 갑상선 기능에 이상이 발생했음을 알 수 있어요.
								',null,8,to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 15:24:03.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('17','5','후두암, 인두암','후두와 인두는 목 안에 있는 구조물이에요. 발성을 담당하는 후두에 생기는 암을 후두암, 식도와 연결된 인두에 생기는 암을 인두암이라 해요. 인두암은 비인두, 구인두, 하인두 3부위로 나뉘는데 부위에 따라 암 발생 양상이나 치료법이 매우 달라요. 후두암과 인두암은 주로 점막에 악성종양이 발생해요. 흡연과 과도한 음주는 후두암, 인두암 발생과 연관성이 높다고 알려져 있어요.

  후두암과 인두암은 쉰 목소리, 목소리 변화, 목 통증, 목 이물감, 연하곤란과 같은 증상이 초기에 나타나요. 심해지면 호흡곤란, 천명음(쌕쌕거림), 피 섞인 가래와 같은 증상과 목에 혹이 만져지기도 해요. 



  병원을 찾으면 의사가 문진을 통해 자각증상을 확인한 뒤 검사를 시작해요. 내시경 검사로 직접 관찰하여 암을 발견해요. 내시경 삽입에 의한 불편감을 줄이기 위해 부분 마취를 한 후, 다양한 길이의 내시경을 사용하여 인두와 후두를 관찰해요. 검사 도중 암이 의심되는 부분은 조직검사해요. 병리 검사로 악성여부를 판단하여 암을 확진해요. 내시경으로 관찰이 어려운 부분이 있다면 상부 위장관 조영 검사, 위내시경 검사를 추가로 시행해요.

  CT검사와 MRI검사를 시행하여 종양의 위치, 병기, 암의 전이 여부를 결정해요. 림프절 전이를 확인하기 위해 직접 목 부위를 촉진하기도 해요. 다른 부위로의 전이 여부 확인을 위해 PET-CT, 뼈 스캔, 초음파 검사를 추가적으로 시행해요.',null,0,to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('18','7','알파태아단백','우리 몸에 암이 생기면 정상일 때는 없던 특수한 물질들이 만들어져 혈액 속에 발견되요. 이러한 물질들을 ‘종양표지자’라 하며, 암 발생한 장기와 관련성이 높은 몇가지 수치를 활용하여 암을 선별해요. 국가건강검진에서도 암검진 항목에 AFP 수치를 활용해요.

  간암의 종양표지자로 AFP(알파태아단백, α-Fetoprotein) 수치를 활용해요. 간 손상 및 간세포암(Hepatoma)이 있으면 AFP농도가 증가해요. 간암 환자의 90%이상에서 AFP수치 상승이 나타나며, 암의 진행과 함께 수치는 점점 높아져요. 또한 치료가 끝나고 재발할 경우 다시 수치 상승을 보이므로, 치료 효과 및 경과 관찰에도 사용되요.



  검사는 보통 팔의 혈관에서 채혈해요. 검사 당일 평소처럼 식사해도 돼요. 검사 전 흡연은 삼가해주세요. 주사 바늘 삽입 시 통증이 있어요. 채혈이 끝나면 지혈될 때까지 눌러준 후, 반창고를 붙여요.

  검사결과 0~20 ng/mL가 정상 범위에요. 급성 간염, 만성 간염, 간경변이 있을 때에도 AFP가 100~200mg/dL까지 상승해요. 간세포암이면 500~1000ng/mL 이상으로도 결과가 측정되요.',null,0,to_timestamp('25/01/02 18:03:06.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 15:00:20.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('19','7','CEA','우리 몸에 암이 생기면 정상일 때는 없던 물질들이 만들어져 혈액 속에 발견되요. 이러한 물질들을 ‘종양표지자’라 하며, 암 발생 장기와 관련성이 높은 몇가지 수치가 있어 검사로 활용해요. 

  CEA(암태아성항원, Carcino-Embryonic Antigen)는 대장, 췌장, 담낭, 간, 위 등 소화기관에 생기는 암을 조사할 때 종양표지자로 활용되는 당단백 수치에요. 초기에는 대장암 특정 표지자로 여겨졌었는데, 현재는 연구를 통해 비특이적 표지자로 밝혀졌어요. 소화기 외에 유방암, 난소암, 자궁암, 폐암에서도 CEA수치가 상승하기 때문이에요. 또한 암이 아닌 췌장염, 간 손상, 흡연 할 경우에도 수치가 올라갈 수 있어요.

  이러한 특징 때문에 CEA는 암 선별검사로는 사용되지 않으며, 대장암의 병기, 예후, 치료효과, 재발 판정에 이용해요. 수술로 암을 제거하거나 항암치료를 하면 CEA수치가 떨어져요. 치료가 끝나고 경과관찰하는 동안 CEA가 상승한다면 암의 재발 또는 전이를 의심할 수 있어요.  ',null,9,to_timestamp('25/01/02 18:03:06.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 16:05:38.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('21','7','췌장암','췌장에 생기는 악성종양을 췌장암이라고 해요. 췌장은 소화 효소와 혈당을 조절하는 인슐린을 분비하는 소화기관으로 복강 뒤쪽에 위치하고 있기 때문에 암이 발생해도 발견이 쉽지 않아요. 또한 초기에 무증상인 경우가 많고, 소화불량, 복통, 체중감소, 식욕저하, 황달, 명치 통증 등 다른 소화기 질환 증상과 비슷하여 발견하기 어려운 암이에요.

  췌장암은 종양표지자 검사와 상복부 초음파검사, CT검사, MRI검사, 내시경적 역행성 췌담관 조영술(ERCP), 내시경 초음파(EUS), PET-CT 등을 활용하여 진단해요.  



  혈액검사를 통한 종양표지자 검사로는 CEA와 CA 19-9 수치를 확인해요. 종양표지자가 상승했을 때 췌장암을 의심해요. 종양표지자로 초기 췌장암진단은 어렵지만 진행된 췌장암의 60~80% 정도를 찾아낼 수 있어요. 혈액검사에서 췌장 효소인 아밀라아제, 리파아제 수치나 빌리루빈 수치 변화도 함께 비교하여 참고해요.



 상복부 초음파검사로는 췌장의 종양 여부와 담관 확장 유무, 간 전이 여부를 영상으로 확인해요. 주로 통증이나 황달이 있을 때 담석증과 감별하기 위해 시행해요. 췌장은 복강 뒤에 존재해서 장내 가스 등에 의해 관찰이 어려울 수도 있어요. 

 CT검사는 크기가 작은 암도 발견할 수 있고 췌장암을 진단하고 병기를 결정하는데 유용한 검사예요. CT검사로 진단이 확실치 않다면 MRI 검사를 추가로 시행할 수 있어요.',null,0,to_timestamp('25/01/02 18:03:06.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 15:00:20.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('22','8','여성호르몬','여성 호르몬 검사는 난소에서 생산되어 분비되는 에스트로겐(Estrogen)과 프로게스테론(Progesterone) 2가지 호르몬을 말해요. 에스트로겐은 난소에서만 만들어지지만, 프로게스테론은 난소, 부신 피질, 임신 시 태반에서도 생성되요. 여성 호르몬 검사를 통해 난소, 황체, 태반의 기능을 조사할 수 있어요. 

  에스트로겐(Estrogen)은 여성의 2차 성징 발현, 월경 주기 형성, 자궁내막 증식, 난포 성숙 및 배란 촉진 역할을 하는 호르몬이에요. 프로게스테론(Progesterone)은 난포 발육 억제, 자궁내막 비대 및 임신 유지 역할을 해요. 



  검사는 보통 팔의 혈관에서 채혈해요. 검사 당일 평소처럼 식사해도 돼요. 주사 바늘 삽입 시 통증이 있어요. 채혈이 끝나면 지혈될 때까지 눌러준 후, 반창고를 붙여요. 24시간 소변검사 방법으로도 에스트로겐 농도를 측정할 수 있어요. 

  정상적으로 여성 호르몬 결과는 성별, 나이, 생리주기, 임신 여부에 따라 수치가 달라요. 의사가 결과를 해석할 때 이러한 차이를 고려해요. 또한 여러 차례 서로 다른 날 반복 검사하여 측정치 변화를 종합하여 판정해요.',null,0,to_timestamp('25/01/02 18:05:03.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 15:04:36.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('23','8','크레아티닌청소율','신장 내 사구체에서는 혈액 내 불필요한 물질을 소변으로 내보내기 위한 여과 작용이 일어나요. 크레아티닌청소율(Cr Clearance)은 사구체가 1분당 몇ml의 크레아티닌을 여과하고 있는지를 알 수 있는 검사예요. 신장기능을 정확히 파악할 수 있으며, 사구체여과율을 추정하는 값으로 활용되요.

  크레아티닌청소율은 혈액검사와 소변검사 모두 필요해요. 혈액 검사는 보통 팔의 혈관에서 채혈해요. 검사 전 금식은 필요하지 않아요. 다만 검사 전날과 당일 과도한 육류 섭취나 심한 운동은 피해주세요.



  소변 검사는 24시간 동안 소변을 모아 제출해요. 시작 할 때 소변을 보아 첫 소변은 버리고, 그 다음 소변부터 수집하며 24시간째 마지막 소변까지 빠짐없이 모아주세요. 대변 볼 때 나오는 소변도 포함해요. 소변을 모으는 동안 검체는 냉장 보관하며, 카페인이나 약물복용은 결과에 영향을 주므로 피해주세요. 24시간 소변 수집으로 하루 중 변할 수 있는 크레아티닌 양을 평균화하고 24시간 총 소변량도 파악해요. ',null,0,to_timestamp('25/01/02 18:05:03.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 15:04:47.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('24','8','요소질소','요소질소(BUN)는 혈액 속의 요소를 측정하는 검사에요. 음식으로 섭취된 단백질은 간에서 요소로 합성된 후 혈액을 따라 신장에서 여과, 재흡수를 거쳐 소변으로 배설되요.

  요소질소(BUN)의 정상 범위는 10~26mg/dL 에요. 혈액 속에는 정상적으로 소량의 요소가 존재하지만, 수치가 높다면 신장기능에 문제가 생겨 여과가 적절히 일어나지 않았음을 의미해요. 울혈성 심부전, 쇼크, 심한 화상, 탈수로 신장으로 가는 혈류량이 감소한 경우나 위장관 출혈이 있을 때에도 BUN수치는 증가해요. 

  반대로 간에 질병이 생기면 요소질소(BUN) 합성이 줄어 수치가 낮아져요. 임신으로 체액량이 많아져 요소질소가 희석되거나 영양실조로 단백질 결핍이 있다면 BUN수치가 낮게 측정될 수 있어요.



  검사는 보통 팔의 혈관에서 채혈해요. 검사 당일 평소처럼 식사해도 되지만, 고단백 식사는 결과에 영향을 줄 수 있으니 피해주세요. 주사 바늘 삽입시 통증이 있어요. 채혈이 끝나면 지혈될 때까지 눌러준 후, 반창고를 붙여요. 주사 부위에 멍이 발생할 수 있으나 며칠 내로 회복해요. 만약 주사 부위가 붉고 따뜻해지면 의료진에게 알려주세요.

  요소질소(BUN)수치 변화를 관찰하면 만성 신부전 환자의 요독증을 예측할 수 있어요. 또한 투석 치료의 효과를 확인하는 수치로도 활용해요. 그러나 요소질소(BUN)수치는 다양한 요인에 변하므로, 신장기능의 정확히 평가를 위해서는 크레아티닌 농도를 함께 확인하여 진단해요. ',null,0,to_timestamp('25/01/02 18:05:03.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 15:01:13.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('25','9','근전도검사',' 근전도 검사는 얼굴, 팔, 다리 근육에서 이상증상이 나타날 때, 근육 자체의 문제인지 신경의 문제인지 알아보는 검사에요. 근육은 신경의 전기적 신호를 받아 수축하고 움직여요. 손, 발이 저리거나 근력 약화, 근육통, 안면마비 증상이 있을 때 근전도 검사를 시행하여, 신경 및 근육 손상을 진단하고 손상 부위를 찾아요. 

  척추근병증, 중증근무력증, 다발성근염, 피부근염, 신경염, 손목터널증후군, 근위축측삭경화증, 척수종양이 의심될 때 실시해요. 질병의 치료와 예후 확인 목적으로도 시행해요. 

  피부 표면에 전극을 부착하거나 가는 침을 직접 근육에 찔러 검사하며, 근육과 신경에서 발생하는 전기적 신호 활동을 기록해요. 기계로 전기적 활동을 분석하여, 근력이 떨어지거나 마비나 통증이 발생한 원인을 찾아요. ',null,2,to_timestamp('25/01/02 18:05:58.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 17:11:39.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('27','11','골밀도검사','골밀도검사는 뼈의 밀도를 측정하는 검사에요. 밀도가 높을수록 뼈가 강하고 부러질 가능성이 적어요. 골밀도가 엉성해지고, 뼈에 구멍이 숭숭 나서 약해진 상태를 골다공증이라 해요. 폐경, 호르몬, 약물, 운동부족, 칼슘 섭취부족, 흡연 등 다양한 원인으로 뼈의 칼슘과 콜라겐이 손실되며 발생해요. 작은 충격에도 뼈가 부러질 가능성이 커서 골밀도검사를 통해 골다공증을 조기발견하는 것이 중요해요. 

  고령, 폐경 후 여성, 장기 이식 환자, 갑상선 기능 항진증이 있거나, 스테로이드제 장기 투여, 난소 절제술을 받은 경우, 골다공증 가족력이 있는 사람은 골다공증 발생 위험이 더 높아 검사가 필요해요. 골다공증으로 치료 받는 사람의 약물 치료 효과를 평가하는데도 활용되는 검사에요. 



  검사는 X선 촬영을 통해 이루어져요. 검사 전 몸에 부착한 액세서리나 금속 물질을 제거하고, 검사복으로 갈아입어요. 검사대에 똑바로 누우면, 촬영 장비가 움직이며 X선 촬영을 할 거에요. 몸을 움직이지 말아 주세요. 이중 에너지 X선 촬영을 통해 엉덩이 뼈와 요추 뼈 부위의 뼈 손실을 측정하고 결과를 분석해요. 검사는 5분 정도 소요되요.

  검사 결과로 골다공증이나 골감소증을 진단하고, 골절의 위험도와 골다공증 진행 속도도 예측할 수 있어요. 숫자로 결과값(T-score)이 나와요. 0을 기준으로 숫자가 마이너스 값이면 골밀도가 낮은 거에요. -1 이하는 골감소증, -2.5 이하는 골다공증으로 진단해요.',null,1,to_timestamp('25/01/02 18:06:42.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/22 17:11:33.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.EXAMINATION_BOARD (EXAMINATION_ID,BODY_PART_ID,EXAMINATION_NAME,CONTENT,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT) values ('29','14','피부반응검사','피부반응검사는 어떤 물질에 알레르기 반응을 보이는지 판단하는 검사예요. 피부에 알레르기를 유발하는 항원을 묻히거나 주사하면 알레르기 반응이 나타나요. 그 반응을 보고 알레르기 원인을 찾아요.

  피부반응검사는 눈물, 콧물, 재채기가 나고 두드러기가 나는 알레르기 증상이 나타나지만, 원인을 찾지 못한 사람에게 할 수 있어요. 천식 유발 원인을 찾기 위해 하기도 해요. 또 항생제 투여 전 해당 항생제에 알레르기가 있는지 확인하기 위해 자주 해요.



  검사 전 준비 사항이 있어요. 금식은 하지 않아요. 항히스타민제와 특정 항우울제는 검사 결과에 영향을 줄 수 있기 때문에 의료진과 상의 후 잠시 중단해주세요. 샤워는 검사 전날에 하고 몸에 로션을 바르지 마세요.

  알레르기 반응을 조사하는 방법은 세 가지가 있어요. 피부에 알레르기 유발물질을 주사하는 방법, 피부에 알레르기 유발물질을 묻힌 후 주사침으로 피부에 작은 구멍을 내는 방법이 있어요. 검사 소요 시간은 30~40분이고 주사할 때 따끔한 통증이 있을 수 있어요. 또 알레르기 유발물질이 들어있는 패치를 피부에 붙여서 48~72시간 뒤 반응을 확인하는 방식도 있어요. ',null,0,to_timestamp('25/01/02 18:07:53.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/03 15:02:34.000000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into PROJECT_HOSPITAL.FILESTORE
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('TEST_PK','TEST_OG','TEST_PATH');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('TEST_PK2','TEST_OG2','TEST_PATH2');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('b223ce34-fc8c-4e4e-a067-72b7ea7b0724.png','default.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/b223ce34-fc8c-4e4e-a067-72b7ea7b0724.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d4e4c584-b334-43e5-98bf-bb54bd651dbc.png','test_screenshot.png','C:/MyStudy/Project_Hospital/user/qnaBoard/d4e4c584-b334-43e5-98bf-bb54bd651dbc.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('0c323841-4b91-4735-939a-6189a0b6291f.png','default.png','C:/MyStudy/Project_Hospital/user/qnaBoard/0c323841-4b91-4735-939a-6189a0b6291f.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('c9063bff-a1c4-4f3a-9118-b862bced4d96.png','default.png','C:/MyStudy/Project_Hospital/user/qnaBoard/c9063bff-a1c4-4f3a-9118-b862bced4d96.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('17ffd2fd-deda-427c-88c5-564de4146265.png','test_screenshot.png','C:/MyStudy/Project_Hospital/user/qnaBoard/17ffd2fd-deda-427c-88c5-564de4146265.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('71f24097-cba3-4cb1-a7b1-929559220c1f.png','test_screenshot.png','C:/MyStudy/Project_Hospital/user/qnaBoard/71f24097-cba3-4cb1-a7b1-929559220c1f.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('1b253b70-9304-402e-8090-fe85a4e9bad0.png','default.png','/Project_Hospital_uploadedFiles/user/qnaBoard');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('CP11-1','의료진 김민서 프로필1.png','/images/DrProfiles/CP11-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('PC10-8','의료진 김강우 프로필1.png','/images/DrProfiles/PC10-8.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('7fdc2f0d-50e6-4fc7-8bc3-13ac676cb88d','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/7fdc2f0d-50e6-4fc7-8bc3-13ac676cb88d');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('PC10-9','의료진 김강우 프로필2.png','/images/DrProfiles/PC10-9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWMG-3','SWMG-1.png','/images/DrProfiles/SWMG-3.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('a38871fc-ac42-40bd-a60f-82d6cc44e0eb','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/a38871fc-ac42-40bd-a60f-82d6cc44e0eb');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('243ff843-6b67-4ede-a187-e6bdb201bb02','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/243ff843-6b67-4ede-a187-e6bdb201bb02');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ad69bc52-3e76-4ec3-a898-3ae2d2e79a56','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/ad69bc52-3e76-4ec3-a898-3ae2d2e79a56');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('28c6e67c-0bad-4df7-8208-efc9b849aecc','스크린샷_241017_3.png','c:/MyStudy/qnaFiles/28c6e67c-0bad-4df7-8208-efc9b849aecc');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('93c3ad90-ad8a-4427-a4aa-e0931a34bc3e','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/93c3ad90-ad8a-4427-a4aa-e0931a34bc3e');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('9c60d614-480c-413e-9fea-49fbf9ac9216','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/9c60d614-480c-413e-9fea-49fbf9ac9216');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('c1bf19e5-c20f-4f3a-a478-21f66c48705d','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/c1bf19e5-c20f-4f3a-a478-21f66c48705d');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('84952f43-89dc-4403-afc0-e8ddf265fb91','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/84952f43-89dc-4403-afc0-e8ddf265fb91');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('f80ec70a-dd71-4c85-8bc6-ff2376a24f52','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/f80ec70a-dd71-4c85-8bc6-ff2376a24f52');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('223ed251-e107-44c3-8aaa-d10b6f426f61','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/223ed251-e107-44c3-8aaa-d10b6f426f61');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('51a527d9-24dc-4992-999e-dd658cb9d34e','스크린샷_241017_3.png','c:/MyStudy/qnaFiles/51a527d9-24dc-4992-999e-dd658cb9d34e');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('GS6-1','의료진 프로필 이미지1.png','/images/DrProfiles/GS6-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('PD7-1','의료진 서현진 프로필1.png','/images/DrProfiles/PD7-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('AN4-3','의료진 김갑수 프로필1.png','/images/DrProfiles/AN4-3.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('98ea137d-1af0-4448-b5d7-95a5d42bb643','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/98ea137d-1af0-4448-b5d7-95a5d42bb643');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ab23cf50-5bd7-48b4-b3c6-c8027ed0b873','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/ab23cf50-5bd7-48b4-b3c6-c8027ed0b873');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('93f48f70-1281-4c78-814a-74ef902af35c','스크린샷_241017_3.png','c:/MyStudy/qnaFiles/93f48f70-1281-4c78-814a-74ef902af35c');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('7c083776-4c6f-44ab-835d-621ff02c69a7','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/7c083776-4c6f-44ab-835d-621ff02c69a7');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('252eabe5-6a33-42d0-9af2-041bd3fc9cdd','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/252eabe5-6a33-42d0-9af2-041bd3fc9cdd');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('49f2f843-8559-4f76-82a3-e6bfe9246969','스크린샷_241017_3.png','c:/MyStudy/qnaFiles/49f2f843-8559-4f76-82a3-e6bfe9246969');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d09874f0-8d6d-4296-b5ed-04412ae7823b','스크린샷_241016_1.png','c:/MyStudy/qnaFiles/d09874f0-8d6d-4296-b5ed-04412ae7823b');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('f7fe0d16-928a-4896-a58c-fcbc7f80ec0d','스크린샷_241016_2.png','c:/MyStudy/qnaFiles/f7fe0d16-928a-4896-a58c-fcbc7f80ec0d');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWAN-1','마취통증의학과 이미지.png','/images/DrProfiles/SWAN-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('RD5-3','의료진 박홍석 이미지1.png','/images/DrProfiles/RD5-3.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ER8-1','의료진 유연석 프로필1.png','/images/DrProfiles/ER8-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWOBGY-1','산부인과 이미지.png','/images/DrProfiles/SWOBGY-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('@profile_default.jpg','회원 기본 프로필.jpg','C:\MyStudy\70_Spring\Project_Hospital\src\main\webapp\resources\images');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWPD-1','소아청소년과 이미지.png','/images/DrProfiles/SWPD-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWRD-1','영상의학과 이미지.png','/images/DrProfiles/SWRD-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWGS-7','외과 이미지.png','/images/DrProfiles/SWGS-7.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('CP9-1','KakaoTalk_20241103_140128133_01.jpg','/images/DrProfiles/CP9-1.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('be25a60c-f490-4505-b294-ebcd8bfa80e0.png','간암.png','/project_Hospital_uploadedFiles/be25a60c-f490-4505-b294-ebcd8bfa80e0.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('6ab169f1-3bec-45dd-81e8-2c64664a2475.png','간암.png','/project_Hospital_uploadedFiles/manager/diseaseBoard/6ab169f1-3bec-45dd-81e8-2c64664a2475.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ceb8aa78-7fd7-4981-a41a-16b87328efd8.png','간암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/ceb8aa78-7fd7-4981-a41a-16b87328efd8.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('8ffaccbe-85f0-4cbb-9b16-ea3b20396539.png','test_screenshot.png','C:/MyStudy/70_Spring/Project_Hospital/Project_Hospital/src/main/webapp/resources/uploadedFiles/user/qnaBoard/8ffaccbe-85f0-4cbb-9b16-ea3b20396539.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWER-1','응급의학과 이미지.png','/images/DrProfiles/SWER-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWPC-1','정신건강의학과 이미지.png','/images/DrProfiles/SWPC-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('38ab90bb-5879-475a-9cb0-7239e29fe4c5.png','default.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/38ab90bb-5879-475a-9cb0-7239e29fe4c5.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWCP-1','진단검사의학과 이미지.png','/images/DrProfiles/SWCP-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('4d57199b-d34b-4fb1-aa24-7742e30ea779.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/4d57199b-d34b-4fb1-aa24-7742e30ea779.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('0a105f12-c2e1-4086-a540-536ff0759054.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/0a105f12-c2e1-4086-a540-536ff0759054.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('43ef931e-73c1-4ada-8438-90d1c923efbf.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/43ef931e-73c1-4ada-8438-90d1c923efbf.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('8a27ee02-a376-4022-922b-213aa17f07a9.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/8a27ee02-a376-4022-922b-213aa17f07a9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('bac78908-85e3-443d-8560-2cfc94398df9.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/bac78908-85e3-443d-8560-2cfc94398df9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('b909d68a-baa3-4a1d-ad2c-e0f40f7583d6.png','스크린샷 2025-01-07 143450.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/b909d68a-baa3-4a1d-ad2c-e0f40f7583d6.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('9a3d2c54-65db-4107-b3fb-27965ce70523.jpg','cuteCat1.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/9a3d2c54-65db-4107-b3fb-27965ce70523.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('35513846-0668-4236-bc8c-e337dc525d47.jpeg','cat1.jpeg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/35513846-0668-4236-bc8c-e337dc525d47.jpeg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('03dc3939-4fdf-4e4e-ae7d-b0342b74a0d2.jpg','cuteCat1.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/03dc3939-4fdf-4e4e-ae7d-b0342b74a0d2.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('de73d96a-44f2-4bd0-b585-947339827fe9.png','간암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/de73d96a-44f2-4bd0-b585-947339827fe9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('cc336b1f-09df-47d2-908f-9075dab0e95b.png','경계성인격장애.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/cc336b1f-09df-47d2-908f-9075dab0e95b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d4107b30-c76a-4424-9b28-a80a9da4e1ba.png','목디스크.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/d4107b30-c76a-4424-9b28-a80a9da4e1ba.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('444f446a-d5de-4b9d-bf44-dda4eb264b67.png','골다공증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/444f446a-d5de-4b9d-bf44-dda4eb264b67.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('243bc80e-f575-4dfe-b78c-8305809de4be.png','구인두암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/243bc80e-f575-4dfe-b78c-8305809de4be.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('47157e5d-9733-4262-9302-a866db844f66.png','다발골수종.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/47157e5d-9733-4262-9302-a866db844f66.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('e1d9de69-490f-49ec-8236-c86469d12151.png','담낭암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/e1d9de69-490f-49ec-8236-c86469d12151.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('a480b328-c6e4-40ab-b889-24fd9058a41b.png','대동맥판막 협착증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/a480b328-c6e4-40ab-b889-24fd9058a41b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('c2c82c3d-13d1-42aa-acd3-d457e8f8f762.png','두드러기.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/c2c82c3d-13d1-42aa-acd3-d457e8f8f762.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('45f43746-3902-4d3a-b477-5f385a49b74b.png','레녹스-가스토 증후군.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/45f43746-3902-4d3a-b477-5f385a49b74b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('72da2a18-122d-4372-bce3-335c89b28708.png','루이소제치매.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/72da2a18-122d-4372-bce3-335c89b28708.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('b8fbd59e-2d69-4fe1-b01b-6b2b2b18fa9f.png','벨마비.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/b8fbd59e-2d69-4fe1-b01b-6b2b2b18fa9f.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('4b5c6f7b-705d-4533-812a-f7a0ebd8b6f2.png','본태성떨림.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/4b5c6f7b-705d-4533-812a-f7a0ebd8b6f2.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('855d8969-3f49-4092-a7be-4d5d5d6784bf.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/855d8969-3f49-4092-a7be-4d5d5d6784bf.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('2bb9c1be-2c9f-4b62-88fd-5ee962cc6e11.png','불면증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/2bb9c1be-2c9f-4b62-88fd-5ee962cc6e11.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('50d2143c-08c7-4b5e-a489-eeedc43fbe00.png','섭식장애.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/50d2143c-08c7-4b5e-a489-eeedc43fbe00.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('2bc36ce1-799a-4a9a-8219-01252e941062.png','성대결절.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/2bc36ce1-799a-4a9a-8219-01252e941062.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('6a81e2be-a38c-43b6-afd7-d95f0aabbbaf.png','소화성궤양.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/6a81e2be-a38c-43b6-afd7-d95f0aabbbaf.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('46e96e4b-291e-40d2-b4e5-475fff3945a2.png','벨마비.png','/Project_Hospital_uploadedFiles/manager/examinationBoard/46e96e4b-291e-40d2-b4e5-475fff3945a2.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWMM-1','space.jpg','/images/DrProfiles/SWMM-1.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ac6fe25c-3262-4516-a2ac-956d86054546.png','스크린샷 2025-01-15 190210.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/ac6fe25c-3262-4516-a2ac-956d86054546.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('f25d10e5-2add-4d6a-91a0-03e6ceb68bfc.png','구인두암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/f25d10e5-2add-4d6a-91a0-03e6ceb68bfc.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWSAM-1','sample_image.png','/images/DrProfiles/SWSAM-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('OBGY13-6','gkgk.png','/images/DrProfiles/OBGY13-6.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('6522ee8a-39e9-42d2-9f18-b1079106049d.jpg','space.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/6522ee8a-39e9-42d2-9f18-b1079106049d.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('OBGY13-7','hoho.png','/images/DrProfiles/OBGY13-7.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d317f39d-d316-48d9-989c-c186d64ec785.jpg','space.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/d317f39d-d316-48d9-989c-c186d64ec785.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('061f76ee-4f60-498b-ac08-58f32f31beb3.png','스크린샷 2024-11-01 092759.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/061f76ee-4f60-498b-ac08-58f32f31beb3.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('2fa8db10-68ff-43b9-a7fe-976fa3348824.png','스크린샷 2025-01-16 214912.png','/Project_Hospital_uploadedFiles/manager/healthBoard/2fa8db10-68ff-43b9-a7fe-976fa3348824.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ef9b9e60-acbf-45ee-bd56-9523d43f2a02.png','스크린샷 2025-01-16 214912.png','/Project_Hospital_uploadedFiles/manager/healthBoard/ef9b9e60-acbf-45ee-bd56-9523d43f2a02.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d8957339-fb31-4bf0-802c-64624dc1dfc9.png','스크린샷 2025-01-16 214912.png','/Project_Hospital_uploadedFiles/manager/healthBoard/d8957339-fb31-4bf0-802c-64624dc1dfc9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('80d78cef-e7b2-4d01-b571-684fbf9e0dbd.png','스크린샷 2025-01-15 191052.png','/Project_Hospital_uploadedFiles/manager/healthBoard/80d78cef-e7b2-4d01-b571-684fbf9e0dbd.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('04ff8438-448b-4097-a050-c6a157558938.png','스크린샷 2025-01-15 185642.png','/Project_Hospital_uploadedFiles/manager/healthBoard/04ff8438-448b-4097-a050-c6a157558938.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('24b6b65f-8aba-4d66-bb99-f87491c0060c.png','간암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/24b6b65f-8aba-4d66-bb99-f87491c0060c.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('TEST2-1','샘플 이미지.png','/images/DrProfiles/TEST2-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('97cb659f-9c40-4804-a998-ecb2ad6a2c88.png','쿠싱증후군.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/97cb659f-9c40-4804-a998-ecb2ad6a2c88.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('3d127d2a-662e-4c58-9348-de2a307e665b.png','대동맥판막 협착증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/3d127d2a-662e-4c58-9348-de2a307e665b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('166c8820-d2cb-48d3-98e2-e24d41c8fc94.png','경계성인격장애.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/166c8820-d2cb-48d3-98e2-e24d41c8fc94.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('43bdf0e0-99fb-4350-8bb1-c63ede0a78fa.png','목디스크.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/43bdf0e0-99fb-4350-8bb1-c63ede0a78fa.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('5a9e5c57-0292-45cb-bfdc-af51d2a32375.png','골다공증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/5a9e5c57-0292-45cb-bfdc-af51d2a32375.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('75b0fdaf-0005-4d09-b973-309027e82c2e.png','구인두암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/75b0fdaf-0005-4d09-b973-309027e82c2e.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('898f7763-abca-4ab1-99eb-b82a1ad69b1a.png','다발골수종.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/898f7763-abca-4ab1-99eb-b82a1ad69b1a.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('7d5a43e6-bdab-4422-9a11-510edcf59019.png','담낭암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/7d5a43e6-bdab-4422-9a11-510edcf59019.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('a48e0782-5740-41f6-9220-b9460e49878d.png','두드러기.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/a48e0782-5740-41f6-9220-b9460e49878d.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('f0017aea-3621-495c-bf3b-c6c2541e9c3f.png','레녹스-가스토 증후군.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/f0017aea-3621-495c-bf3b-c6c2541e9c3f.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('45aa463e-f939-430c-9e01-6c4b64e09934.png','루이소제치매.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/45aa463e-f939-430c-9e01-6c4b64e09934.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d0f85d66-1931-495b-b1d8-40a0a49d6f03.png','벨마비.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/d0f85d66-1931-495b-b1d8-40a0a49d6f03.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('9f2d8dfd-2a3d-4cb8-8488-2d65d34bcce9.png','본태성떨림.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/9f2d8dfd-2a3d-4cb8-8488-2d65d34bcce9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('bf4d4c19-7d1c-4776-93c5-b60d81703472.png','부정맥.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/bf4d4c19-7d1c-4776-93c5-b60d81703472.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('beffbb47-fb41-40c7-a987-270448265be9.png','불면증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/beffbb47-fb41-40c7-a987-270448265be9.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('6c930804-5773-4fc6-b37a-87dce0a9d054.png','섭식장애.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/6c930804-5773-4fc6-b37a-87dce0a9d054.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('f7e5a84a-e9be-46ac-a4d6-65284e686ea7.png','성대결절.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/f7e5a84a-e9be-46ac-a4d6-65284e686ea7.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('986b6a35-b0c2-4f42-9df0-8ebc4c7f2ba6.png','소화성궤양.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/986b6a35-b0c2-4f42-9df0-8ebc4c7f2ba6.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('fda31c78-8f00-4443-bcfa-baebd1303e45.png','손목터널증후군.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/fda31c78-8f00-4443-bcfa-baebd1303e45.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('aac60ebd-b522-4c4d-898f-3361625befdf.png','수면무호흡증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/aac60ebd-b522-4c4d-898f-3361625befdf.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('b7418579-850d-4d58-a64b-ca583cc14484.png','알츠하이머.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/b7418579-850d-4d58-a64b-ca583cc14484.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('5b5cc034-993e-4eaa-bcf8-e848919ec114.png','용혈성빈혈.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/5b5cc034-993e-4eaa-bcf8-e848919ec114.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('b05009bc-1b3d-4e0d-a295-834803d5def6.png','우울증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/b05009bc-1b3d-4e0d-a295-834803d5def6.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('81ea1805-c04d-407e-9c1e-5d19a2cfdfff.png','윌슨병.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/81ea1805-c04d-407e-9c1e-5d19a2cfdfff.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('33b10b90-b733-458a-ac1d-972ba3810f9d.png','재생불량성빈혈.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/33b10b90-b733-458a-ac1d-972ba3810f9d.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('f3cbfc15-d654-4306-9df8-14f168277230.png','중증근무력증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/f3cbfc15-d654-4306-9df8-14f168277230.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('9e338247-d0f3-41a7-94c6-e206ca6652c7.png','파킨슨병.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/9e338247-d0f3-41a7-94c6-e206ca6652c7.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('9e9d9e49-23d7-4904-90e1-cebade55bacd.png','폐색전증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/9e9d9e49-23d7-4904-90e1-cebade55bacd.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('82eae93d-8d2d-4543-b69e-9aedd5cd45db.png','혈소판감소증.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/82eae93d-8d2d-4543-b69e-9aedd5cd45db.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('61687ade-aed0-4cf9-9f8c-d43575e604d4.png','목디스크.png','/Project_Hospital_uploadedFiles/manager/healthBoard/61687ade-aed0-4cf9-9f8c-d43575e604d4.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('590e8e55-2a7d-4714-848c-d6ad1a60c21b.png','건강_비장암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/590e8e55-2a7d-4714-848c-d6ad1a60c21b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('eb9cb33b-a672-4315-81d0-9379b5266315.png','건강_악성골종양.png','/Project_Hospital_uploadedFiles/manager/healthBoard/eb9cb33b-a672-4315-81d0-9379b5266315.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('731f4ee9-4bf0-4878-af22-7b76c7f1e888.png','건강_다발골수종.png','/Project_Hospital_uploadedFiles/manager/healthBoard/731f4ee9-4bf0-4878-af22-7b76c7f1e888.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('312e3a2e-205d-4366-933f-b38d24856605.png','건강_갑상선암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/312e3a2e-205d-4366-933f-b38d24856605.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('ff61cc7f-67f9-4ecc-9e9c-facd5768bb0e.png','건강_폐흡충증.png','/Project_Hospital_uploadedFiles/manager/healthBoard/ff61cc7f-67f9-4ecc-9e9c-facd5768bb0e.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('4133a153-94a6-42cd-8854-4a0110956164.png','건강_간흡충증.png','/Project_Hospital_uploadedFiles/manager/healthBoard/4133a153-94a6-42cd-8854-4a0110956164.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('87907909-83a5-41ca-81bd-b1485fec419b.png','건강_담관암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/87907909-83a5-41ca-81bd-b1485fec419b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('1357da3e-91c2-405c-b383-d9c6d054f34b.png','건강_췌장암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/1357da3e-91c2-405c-b383-d9c6d054f34b.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('0b4dc62c-8f89-4691-a012-cda96d0a9cdf.png','건강_급성림프모구성백혈병.png','/Project_Hospital_uploadedFiles/manager/healthBoard/0b4dc62c-8f89-4691-a012-cda96d0a9cdf.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('d5660b04-e1d1-4fb2-8959-139dc930a923.png','건강_폐포자충폐렴.png','/Project_Hospital_uploadedFiles/manager/healthBoard/d5660b04-e1d1-4fb2-8959-139dc930a923.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('874eeaa7-ad95-416e-abea-dd1901457f27.png','건강_비인두암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/874eeaa7-ad95-416e-abea-dd1901457f27.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('7cb35f25-37e9-4377-b03c-04ff00aa55da.png','건강_옴.png','/Project_Hospital_uploadedFiles/manager/healthBoard/7cb35f25-37e9-4377-b03c-04ff00aa55da.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('80c06076-f45d-4861-bc10-e9153c506021.png','건강_크립토곡쿠스증.png','/Project_Hospital_uploadedFiles/manager/healthBoard/80c06076-f45d-4861-bc10-e9153c506021.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('74cf32dc-e0b9-4584-affb-690bffd03fc4.png','건강_후두암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/74cf32dc-e0b9-4584-affb-690bffd03fc4.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('8c1fed0d-b08b-4edd-bcdf-3e6b54aec860.png','건강_간암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/8c1fed0d-b08b-4edd-bcdf-3e6b54aec860.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('7578b494-63ed-44f4-abe0-63315f06f591.png','건강_자궁경부암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/7578b494-63ed-44f4-abe0-63315f06f591.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('6eee6cab-a8b9-49ed-b546-8489b1ec6cbe.png','건강_충수암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/6eee6cab-a8b9-49ed-b546-8489b1ec6cbe.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('65582d86-39da-4487-a2d1-70a02c7fe985.png','건강_헬리코박터.png','/Project_Hospital_uploadedFiles/manager/healthBoard/65582d86-39da-4487-a2d1-70a02c7fe985.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('670ba438-331a-470e-ab76-476de5989532.png','건강_소장암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/670ba438-331a-470e-ab76-476de5989532.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('7eac0263-6554-4f28-88a6-21918199933f.png','건강_식도암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/7eac0263-6554-4f28-88a6-21918199933f.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('266c4182-3bcd-4e4f-aab2-a8dbf1d4c2e4.png','건강_구강암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/266c4182-3bcd-4e4f-aab2-a8dbf1d4c2e4.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('2756583a-c620-422e-988d-3577ce71be9c.png','건강_직장암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/2756583a-c620-422e-988d-3577ce71be9c.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('145a4fab-7114-434c-abba-e925f6af03af.png','건강_보툴리누스.png','/Project_Hospital_uploadedFiles/manager/healthBoard/145a4fab-7114-434c-abba-e925f6af03af.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('9c385144-9114-4125-8235-51d4376acc45.png','건강_비강암.png','/Project_Hospital_uploadedFiles/manager/healthBoard/9c385144-9114-4125-8235-51d4376acc45.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('11d489ee-abb9-4a32-8288-1a650a427231.png','건강_무좀.png','/Project_Hospital_uploadedFiles/manager/healthBoard/11d489ee-abb9-4a32-8288-1a650a427231.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('943080f2-903f-415d-a6f7-f941235fa78e.png','건강_아스페르길루스증.png','/Project_Hospital_uploadedFiles/manager/healthBoard/943080f2-903f-415d-a6f7-f941235fa78e.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWSWEY-1','안과 이미지.png','/images/DrProfiles/SWSWEY-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWEY-1','안과 이미지.png','/images/DrProfiles/SWEY-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWPA-1','병리과 이미지.png','/images/DrProfiles/SWPA-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWDE-1','치과 이미지.png','/images/DrProfiles/SWDE-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('71942725-8e78-4460-87e7-9cac0ca821a2.png','스크린샷 2025-02-06 154223.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/71942725-8e78-4460-87e7-9cac0ca821a2.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('DE45-1','김민석 프로필 이미지1.png','/images/DrProfiles/DE45-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('PA44-4','장현진 프로필 이미지1.png','/images/DrProfiles/PA44-4.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('AN47-1','박민준 프로필 이미지1.png','/images/DrProfiles/AN47-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('SWDR-1','피부과 이미지.png','/images/DrProfiles/SWDR-1.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('DR46-2','최정윤 프로필 이미지1.png','/images/DrProfiles/DR46-2.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('EY43-2','김범진 프로필 이미지1.png','/images/DrProfiles/EY43-2.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('98fcc490-bd13-46ce-8052-7b332ab90b81.png','스크린샷 2025-02-06 152838.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/98fcc490-bd13-46ce-8052-7b332ab90b81.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('3535818c-d030-4d73-abff-d73329a235c8.png','스크린샷 2025-02-06 154223.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/3535818c-d030-4d73-abff-d73329a235c8.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('a192d6f3-2bc6-4cf5-9aa7-47d53571e592.png','스크린샷 2025-02-06 155438.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/a192d6f3-2bc6-4cf5-9aa7-47d53571e592.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('beb82f48-969f-4bb9-92af-59789915786d.png','스크린샷 2025-02-06 152838.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/beb82f48-969f-4bb9-92af-59789915786d.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('05b9c069-75a4-40b9-8088-7528bcd5c8b7.png','간암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/05b9c069-75a4-40b9-8088-7528bcd5c8b7.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('6d590a9e-51eb-4827-a616-e886f4669092.jpg','earth.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/6d590a9e-51eb-4827-a616-e886f4669092.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('17a86b72-3847-4d4a-9d89-68e294867ccb.png','간암.png','/Project_Hospital_uploadedFiles/manager/diseaseBoard/17a86b72-3847-4d4a-9d89-68e294867ccb.png');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('cf31f1e5-5e3e-43b4-8c1d-e64831ca7130.jpg','earth.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/cf31f1e5-5e3e-43b4-8c1d-e64831ca7130.jpg');
Insert into PROJECT_HOSPITAL.FILESTORE (FILESTORE_ID,ORIGINAL_NAME,FILE_PATH) values ('47c0d5d7-19ec-429c-ac17-5a3dabd54c9a.jpg','earth.jpg','/Project_Hospital_uploadedFiles/manager/diseaseBoard/47c0d5d7-19ec-429c-ac17-5a3dabd54c9a.jpg');
REM INSERTING into PROJECT_HOSPITAL.HEALTH_BOARD
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('5','캔에 든 음식이라도 한 번 더 익혀 드세요 – 보툴리누스 중독','145a4fab-7114-434c-abba-e925f6af03af.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:35:05.000000000','RR/MM/DD HH24:MI:SSXFF'),'									통조림 식품이나 병에 밀봉한 식품, 진공포장 소시지 등을 가공할 때 살균처리를 제대로 하지 않으면 ‘클로스트리듐 보툴리눔’이라는 세균이 증식합니다. 균이 증식하면서 독소를 만드는데, 이런 식품을 먹고 식중독에 걸리면 심각한 신경 손상이 발생하며 이를 ‘보툴리누스 중독’이라 합니다. 보툴리눔균은 혐기성균이라 공기가 없어도 독소를 생성합니다.



‘보툴리누스 중독’은 오염된 음식을 섭취하고 12~36시간이 지난 후 증상이 나타납니다. 독소를 많이 섭취할수록 증상이 급격히 나타납니다. 보통 얼굴, 눈, 목의 근육에서 증상이 시작됩니다. 눈꺼풀이 처지고 복시가 나타나고 시야가 흐려집니다.



안면 근육이 마비되며 입이 마르고 말할 때 발음이 불분명해집니다. 음식물이나 침을 삼키기 어렵습니다. 메스꺼움과 구토, 복부 경련이 발생할 수도 있습니다. 이런 증상이 나타나면 빨리 병원을 방문해야 합니다.



얼굴과 목에서 시작된 근력 상실이 팔과 다리, 몸통 근육으로 진행합니다. 감각에는 이상이 없는 하지마비가 발생할 수 있습니다. 호흡 근육이 약해지면 호흡곤란이 발생하고 흡인성 폐렴의 위험성이 높아집니다.



치료는 최대한 빨리 항독소(antitoxin) 혈청을 투여하며 호흡곤란이 있는 경우 인공호흡기 치료를 시작합니다.



보툴리눔균 감염은 사람과 사람 간에는 전파되지 않습니다. 예방을 위해 통조림과 병에 든 가공식품, 진공포장된 소시지를 먹을 때는 한 번 더 익혀 드세요. 이상한 냄새가 나는 경우 맛을 조금 보는 것도 위험하니 주의하세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('6','해외에 나가기 전 예방접종은 필수! - 장티푸스',null,5,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:58:29.000000000','RR/MM/DD HH24:MI:SSXFF'),'살모넬라 타이피(Salmonella typhi) 균 감염으로 발생하는 장티푸스는 발생 후 24시간 이내 신고해야 하며 격리가 필요한 법정 2급 감염병입니다. 콜레라와 마찬가지로 감염된 사람의 대변, 소변에 의해 오염된 물과 음식을 통해 전파됩니다.



동남아시아나 인도, 중동, 중남미, 아프리카 등지에서는 여전히  유행하고 있으며 선진국에서도 드물게 발생합니다. 우리나라에서도  매년 100~300명 정도가 감염됩니다.



잠복기는 6~30일로 길고, 오한이나 고열, 복통이 나타납니다.  어린이의 경우 설사를 하고 성인에서는 변비 증세를 보입니다.  발병 후 2주가 되면 복부와 가슴에 장밋빛 반점이 생기고, 간과 비장  비대가 나타나기도 합니다. 치료하지 않으면 4주 이상 열이  계속됩니다.



혈액이나 소변, 대변, 골수 등에서 채취한 검체에서 균이 발견되면  장티푸스로 진단합니다. 초기에는 혈액에서만 균이 나오지만,  1주일이 지나면 대변, 소변에서도 균이 나타나요.



장티푸스는 감염자를 격리해서 치료합니다. 퀴놀론계나 페니실린계  항생제를 사용해 치료합니다. 치료를 잘 받으면 치사율은 1%  미만입니다. 하지만 합병증으로 장천공, 장폐색 등이 발생할 수  있습니다.



환자의 2~5%는 영구보균자가 되는 것으로 알려져 있습니다. 담낭  보균자의 경우 담석이 없으면 4~6주 항생제 치료를, 담석이 있다면  담낭을 제거하고 2~3주 항생제를 투여합니다. 균이 완전히 없어진  것이 확인될 때까지 요리를 하거나 환자나 아이를 돌보는 일은 하지  않습니다.



환자는 대소변에서 균이 배출되지 않을 때까지 격리합니다.  보통 회복 후 1주일까지 균이 배출될 수 있습니다. 증상이 없고  항생제 치료 완료 48시간이 지나면 대변배양검사를 24시간  간격으로 시행해 3회 연속 음성이 확인되면 격리를 해제합니다.



치료가 끝날 때까지 개인 물품은 따로 씁니다. 장티푸스는 철저한 위생관리로 예방할 수 있어요. 음식을 먹기 전이나 화장실을 다녀온 후 흐르는 물에 비누를 사용해 30초 이상 손을 씻습니다.



음식은 꼭 완전히 익혀 섭취하고 생야채는 피하고, 과일은 깨끗이  씻어 껍질을 벗겨서 먹습니다. 장티푸스 유행 국가를 방문했을 때는  꼭 물을 끓여 먹고 완전히 익힌 음식을 먹는 게 좋습니다. 얼음이  들어간 음료도 피하는 게 예방하는 길입니다.



동남아시아나 인도, 중동, 중남미, 아프리카를 여행하거나  장기체류한다면 떠나기 2주 전 미리 주사용 백신을 접종하는 것이  좋습니다. 장티푸스 유행국 여행 후 60일 이내 증상이 나타나면  가까운 병원에 가서 장티푸스 검사를 받는 게 좋습니다.

');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('7','음식을 잘 삼키지 못하겠어요 - 식도의 악성 신생물(식도암)','7eac0263-6554-4f28-88a6-21918199933f.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:34:19.000000000','RR/MM/DD HH24:MI:SSXFF'),'									식도암은 입과 위를 연결해주는 식도에 생긴 암입니다. 식도 주위에는 다른 장기들이 가까이 있어서 암세포가 침범하기 쉽습니다. 식도암은 60~70대 남성에게 자주 나타나요.                                  



흡연과 음주를 오래 하면 식도암에 걸릴 위험이 높아요. 위산이 식도를 자극해 식도 세포가 변하는 바렛식도와 역류성 식도염도 위험 요인입니다. 과일과 채소를 충분히 먹지 않는 사람도 조심해야 해요.



가장 흔한 증상은 음식물을 삼키기 어렵다는 거예요. 자라나는 암이 식도를 좁히기 때문입니다. 목에 뭔가 걸린 느낌 때문에 식사량이 줄어 체중이 감소해요. 



식도암을 진단하기 위해서는 식도 점막을 관찰하는 식도 내시경 검사를 해요. 동시에 조직검사도 하죠. 암이 전이되었는지 확인하기 위해서 초음파 내시경, 기관지 내시경, CT, PET 검사를 할 수도 있어요.



식도암은 수술로 치료합니다. 병기에 따라 식도와 주위 조직을 제거한 후, 절제하고 남은 식도와 위를 연결합니다. 수술 후 항암제 치료와 방사선 치료를 함께 진행합니다.

크기가 너무 크면 수술 전에 항암, 방사선 치료를 하기도 해요. 치료 후 음식을 삼키지 못하면 스텐트를 넣거나 튜브로 영양분을 섭취해야 합니다.



치료 중 수영, 요가처럼 가볍게 할 수 있는 운동으로 힘든 몸과 마음의 스트레스를 풀어보세요. 두려움에 대해 이야기할 수 있는 모임에 참여해 서로 지지하고 도움을 주고받는 것도 좋은 방법입니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('8','유전성 장질환을 앓고 있다면 정기적인 검사를 - 소장암','670ba438-331a-470e-ab76-476de5989532.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:34:10.000000000','RR/MM/DD HH24:MI:SSXFF'),'									소장은 위와 대장 사이에 위치하며 십이지장, 공장, 회장으로 이루어져 있습니다. 암세포가 발생한 세포의 종류에 따라 다양한 암이 발생해요. 소장암의 50% 이상이 선암이며 유암종, 림프종, 육종, 위장관기질성종양(GIST) 등도 발생할 수 있습니다.



60세 이상, 여성보다 남성에서 더 잘 발생하며 유전 및 식습관과 연관이 있는 것으로 알려져 있습니다. 유전성 질환인 가족성 용종증이 가장 큰 위험 인자며 흡연, 음주, 고지방 식사, 붉은색 육류, 소금에 절인 훈제 음식, 방사선, 여성호르몬, 살충제 노출 등은 발병 위험을 높여요. 크론병, 셀리악병, 포이츠-예거 증후군 등의 장 질환이 있을 경우 소장암이 잘 발생합니다.



소장암은 초기에 대부분 특별한 증상이 없습니다. 암세포가 장을 막으면 복통과 복부 불편감, 구토 증상이 있고 만성 위장관 출혈, 혈변, 체중감소, 식욕부진이 나타나며 담관이나 췌관을 막을 경우 황달이나 췌장염이 발생합니다.



진단을 위해 CT 검사, 상부위장관촬영술, 소장조영검사, 소장내시경, 캡슐내시경 검사를 할 수 있습니다. 내시경 검사는 직접 소장 내부를 관찰하고 조직검사도 가능하기 때문에 소장암을 확진할 수 있습니다.



수술적 치료로 암 부위를 제거하고 우회술을 시행해요. 암이 다른 부위로 퍼졌다면 주변 장기와 림프절 절제도 필요해요. 암 종류에 따라 방사선 치료와 항암 화학치료를 병행합니다.



수술 후 남은 소장의 길이가 짧거나 우회술로 음식이 소장에 머무는 시간이 짧다면 흡수 장애가 일어나면서 단장 증후군이 발생할 수 있습니다. 장이 적응하는데 3개월 정도 필요해요. 적응 기간 동안에는 식사를 소량씩 나눠서 자주 하며 지방 섭취를 줄이는 것이 도움이 됩니다.



예방을 위해 기름진 음식, 붉은색 육류, 훈제한 요리를 피하고 가족이 유전성 장질환을 앓고 있다면 내시경 검사를 정기적으로 받는 것이 좋습니다. 소장암을 치료한 후에는 꾸준히 정기 검진을 받아야 합니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('9','오른쪽 아랫배가 많이 아파요 - 충수암','6eee6cab-a8b9-49ed-b546-8489b1ec6cbe.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:33:51.000000000','RR/MM/DD HH24:MI:SSXFF'),'									흔하진 않지만, 맹장에 붙어있는 충수돌기에도 암이 생겨요. 천천히 성장하고 전이도 적은 특징이 있어요. 충수의 염증, 악성 빈혈, 위축성 위염, 졸링거-엘리슨 증후군, 흡연, 음주, 변비 등은 충수암 발생 위험을 높일 수 있습니다.



초기 증상은 충수염과 비슷합니다. 명치 부위의 불편감과 오른쪽  아랫배에 심한 통증을 느끼는데, 움직이거나 숨을 크게 쉴 때  통증은 더 심해져요.  복부팽만, 메스꺼움, 구토 증상도 있으며  맹장 부위를 손으로 누르거나 뗄 때 통증이 느껴집니다.  대부분 충수염인 줄 알고 검사나 수술하는 중에 발견하거나  건강 검진 중 대장 내시경에서 발견하기도 해요.



혈액 검사와 영상 검사로 진단하는데 종양표지자를 확인하고  CT 검사로 종양의 위치와 크기를 확인합니다. 충수염과  감별하기 위해 조직검사가 시행될 수도 있어요.



충수암은 수술로 치료하는데 크기가 크면 결장과 림프절도 함께  제거합니다. 전이가 있는 경우 수술 후 항암화학요법을  병행합니다. 복강 내 온열화학요법(HIPEC)으로 복강 안으로 퍼진  암을 치료하기도 합니다.



제때 치료하지 않으면 천공이나 복막염 등 합병증을 일으킬 수  있어 신속한 치료가 필요합니다. 치료가 잘 될 경우 생존율과  예후가 좋은 암이지만 수술 후에도 정기적으로 재발 여부를  확인하는 것이 좋습니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('10','장의 끝부분에 암이 생겼어요 - 직장암','2756583a-c620-422e-988d-3577ce71be9c.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:34:35.000000000','RR/MM/DD HH24:MI:SSXFF'),'									대장의 끝에 위치한 직장은 음식이 배설되기 전 마지막 종착역인데, 대장암은 직장에서 가장 흔히 발생합니다. 주로 50세 이상에서 발병합니다.  

붉은 고기를 많이 먹는 식습관을 갖고 있고 가족 중 직장암을 앓았던 사람이 있다면 직장암 발병 위험이 높아요. 

염증성 장질환이 있는 사람도 발병 위험이 높은 편입니다.



직장에 암이 생기면 끈적끈적한 혈변을 보게 됩니다. 변비나 설사를 하고 배가 불편한 느낌이 들기도 해요. 그러나 이러한 증상이 특징적인 증상은 아니라서 치핵, 치루, 농양, 직장탈출증 등 다른 항문질환과 구별해야 합니다.



대장내시경 검사가 제일 정확한 진단법입니다. 내시경으로 직장과 대장을 관찰하고 의심 부위를 조직검사하죠.  

암이라면 혈액검사, CT, MRI, PET 촬영을 진행합니다. 암세포의 크기와 전이 여부를 평가하고 병기를 정해요.



암이 아주 작고 전이가 없다면 내시경으로 치료를 시도할 수도 있어요. 대부분의 직장암은 수술이 기본 치료로 암과 인근 조직을 절제하고 장을 이어줍니다. 

암 위치가 항문 근처라면 항문을 제거하고 인공항문을 만들기도 해요. 병기에 따라 재발 방지와 완치를 위해서 수술 후 항암, 방사선 치료를 진행합니다.



수술 후 암이 재발할 가능성이 있어 꾸준한 추적관찰이 필요합니다. 일반적으로 수술 후 1년 뒤 대장 내시경검사를 받습니다.



직장암은 천천히 자라기 때문에 검사로 예방할 수 있습니다. 직장암이 호발하는 50대부터 대장내시경 검사를 받고 평소 과일과 채소를 골고루 먹는 것이 좋습니다. 꾸준한 운동도 하나의 예방법입니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('11','눈과 얼굴에 황달이 나타났어요 - 담관의 악성 신생물(담관암)','87907909-83a5-41ca-81bd-b1485fec419b.png',3,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:31:47.000000000','RR/MM/DD HH24:MI:SSXFF'),'									담즙이 흐르는 담관에 생긴 암으로 위치에 따라 간 안 쪽 담관은 간내담관암. 간 바깥쪽에서 십이지장과 연결된 부위의 간외담관암으로 구분해요. 선암종이 담관암의 대부분을 차지해요. 



발생 원인은 명확하지 않은데 담관 내 담즙 정체, 만성 염증, 만성 담석, 간흡충 감염 선천성 담관 이상, 원발성 경화성 담관염, 염증성 대장질환에서 발암물질 노출 등이 담관암 유발 위험요인으로 알려져 있어요. 



담관에 암이 생기면 담관이 막히거나 좁아지면서 피부와 눈이 노랗게 보이는 황달 증상이 나타납니다. 소변색은 갈색빛을 띄고 피부가 가려운 증상이 나타나요. 장으로 담즙이 분비되지 못해 변이 회백색으로 변해요. 복부 불편함, 식욕 부진, 피곤함, 체중감소와 같은 비특이적 증상과 복부에 둔한 통증이 지속되기도 해요.



진단을 위해서는 혈액검사와 영상검사를 하는데 간 수치(AST, ALT)와 ALP, γ-GT, 종양표지자인 CA19-9 수치 등을 확인합니다. 복부 초음파 및 CT, MRI, MRCP(자기공명 담도조영술) 영상을 통해 담도암을 진단해요.



ERCP(역행성 내시경적 췌담관 조영술)로 담관과 췌관의 조사와 조직검사도 가능해요. 전이 여부로 초음파 내시경(EUS), PET 검사를 할 수 있어요.



담관암 발생 위치와 진행 정도에 따라 치료하는데 침윤 범위에 따라 주변 장기와 조직, 림프절을 제거하고 간까지 전이된 경우 간이식 수술이 필요할 수도 있어요. 수술이 불가능하거나 수술 전후 보조요법으로 항암 화학요법과 방사선 치료를 합니다. 특정 파장의 빛으로 종양을 국소적으로 파괴하는 광역학치료(PDT)도 치료에 활용되고 있습니다.



수술이 힘들 경우 증상 완화를 위한 보존적 치료를 하는데 막힌 담도에 스텐트를 삽입하거나 경피경간담즙배액술(PTBD)로 황달을 치료합니다.



예방법은 아직 밝혀지지 않았지만, 민물고기는 되도록 날것으로 먹지 말고 간흡충증이 의심될 경우 치료를 해야 합니다. 간내 담석증 또는 담관 낭종 같은 선천성 기형은 의사와 상의해 미리 절제하는 것도 좋아요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('12','식욕이 떨어져 체중이 줄고 복부에 덩어리가 만져져요 - 간암','8c1fed0d-b08b-4edd-bcdf-3e6b54aec860.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:33:04.000000000','RR/MM/DD HH24:MI:SSXFF'),'									간암은 발생률이 높고 예후도 좋지 않은 암 중 하나입니다. 간에 발생하는 악성 종양 중 간세포암이 약 80%로 대부분을 차지하기 때문에 간암은 보통 간세포암을 의미합니다.



간세포는 재생을 잘 하지만 병이 진행되어 간 기능의 허용 범위를 넘으면 증상이 나타나요. 간질환이나 간암이 늦게 발견되는 이유입니다. 간암은 B형간염, C형간염이 가장 많은 원인이고, 알코올성 간질환, 비알코올성 지방간으로도 발생해요.



손상된 간을 초기에 치료하지 못하면 간경변증이 발생하는데, 이때 간암이 발생할 위험도 높아집니다. 술, 스트레스, 과로와 같은 생활습관 문제도 복합적으로 작용한다고 추측됩니다.



간경변증, 간암이 발생하면 피곤하고, 기운이 없고, 메스껍고 구토를 하거나 식욕이 줄어 체중까지 줄어요. 시간이 지나면 복부가 팽창하고 덩어리가 만져지거나 통증이 느껴지기도 하고 피부와 눈 흰자에 황달 증상도 나타나1요. 이런 증상이 나타났다면 암이 진행된 경우가 많습니다.



진단을 위해서는 혈액검사와 초음파, CT, MRI 검사를 시행합니다. 혈액검사로 간암에서 나타나는 수치를 확인하고 초음파를 통해 간의 상태, 간암의 크기와 위치를 확인해요. CT, MRI 검사로 간암의 진행상태와 전이 여부를 판정해요. 조직검사는 검사 결과가 충분하지 않을 때 시행합니다.



진행 단계와 간암의 크기, 환자의 나이와 건강상태를 보고 치료해요. 병기에 따라 절제수술, 고주파열치료, 간동맥 화학색전술, 항암약물치료와 방사선항암동시요법, 간이식수술 등을 고려합니다.



B형간염, C형간염 환자는 간경변 검사를 정기적으로 받고 치료 후에도 재발하는 경우가 있어 주의해야 합니다. B형간염 백신을 맞아서 발생 위험을 낮출 수 있어요. 알코올 분해 산물인 아세트알데히드가 간에 손상을 주기 때문에 반드시 금주를 실천해야 합니다.



간암 환자는 식사를 조금씩 자주 먹고 충분한 단백질을 섭취해서 간세포의 재생을 도와주세요. 단백질을 너무 많이 섭취하면 간성혼수가 발생할 수 있으니 조심하고 오렌지, 귤, 자몽과 같은 과일을 섭취해 주세요. 식사 전 가벼운 운동은 식욕 향상에 도움이 될 수 있으며 인스턴트 식품이나 한약은 간 손상을 유발할 수 있어 조심해야 합니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('13','늦게 발견되는 무서운 암 - 췌장암','1357da3e-91c2-405c-b383-d9c6d054f34b.png',3,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:31:56.000000000','RR/MM/DD HH24:MI:SSXFF'),'									췌장은 소화 효소와 혈당을 낮추는 인슐린을 분비합니다. 췌장암은 췌관 세포에서 발생하는 췌관선암이 90%이상으로 보통 췌장암이라 하면 췌관선암을 의미합니다. 그 외 신경내분비종양, 낭종선암 등 여러 종류의 암이 발생해요. 45세 이상, 남성, 흡연, 고지방 식이, 당뇨병, 만성 췌장염, 방사선, 화학물질, 췌장암 가족력은 췌장암 위험요인입니다. 



췌장암은 초기 증상이 특별히 없어 진단이 늦게 됩니다. 복통, 체중감소, 황달, 소화불량, 당뇨병이 가장 흔한 증상으로 주로 복부 위쪽의 통증이나 등으로 뻗치는 통증이 있고 자세에 따라 통증이 나아지거나 더 심해지고 위장약을 복용해도 통증이 나아지지 않습니다. 원인을 모르는 소화불량과 체중감소, 황달, 60세 이상에서 갑자기 발생하는 당뇨병은 췌장암을 의심해봐야 해요.



진단은 종양표지자인 CA 19-9 수치를 확인하고 복부 초음파, CT, MRI, PET, 내시경 초음파(EUS) 검사를 시행해 영상을 확인하면서 암 의심 부위에서 조직검사를 시행해 확진합니다. 암의 위치, 크기, 전이 정도를 확인하여 병기를 결정해요.



치료는 나이, 건강상태, 암의 위치/크기/병기를 고려해 결정하는데 수술로 암을 절제하는 것이 가장 효과적인 치료법입니다. 췌장암은 늦게 발견되어 전이가 있거나 혈관까지 암이 침범하여 수술이 불가능한 경우가 많아요. 수술이 힘든 암, 수술 전 암 크기를 줄이거나 수술 후 남아있는 암 치료를 위해 방사선과 항암치료를 하면 치료 효과를 높일 수 있습니다.



금연을 실천하고 고지방 식이를 줄이고 만성 췌장염과 당뇨병이 있다면 치료를 받아야 합니다. 화학물질에 노출되는 작업장에서 근무한다면 적절한 보호장비를 착용하여 노출을 최대한 줄여주세요. 췌장암 가족력이 있을 경우 정기검진을 놓치지 마세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('14','감염에 취약해지는 암, 비장암','590e8e55-2a7d-4714-848c-d6ad1a60c21b.png',19,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:30:55.000000000','RR/MM/DD HH24:MI:SSXFF'),'																		림프기관의 하나인 비장에도 암이 발생할 수 있습니다. 비장은 외부에서 침범한 박테리아와 병원체를 죽이는 면역 기능을 담당해 비장에 문제가 생기면 면역력이 떨어져요.  노화된 적혈구, 백혈구, 혈소판을 처리하고 몸에 상처가 나면 상처 부위로 단핵 세포를 보내 치유하고 혈액을 저장하는 역할을 합니다.



발생원인은 명확하지 않지만 고령의 남자, 방사선 또는 발암 물질에 노출된 과거력, 과도한 음주와 흡연이 비장암 발생 위험 요인이에요.



증상은 왼쪽 상복부 통증과 함께 쉽게 피로를 느끼고 체중이 감소해요. 감염이 잘 돼 자주 열이 나고, 비장이 2배 이상 커지기도 하죠. 암 크기가 커지면서 위를 누르면 소화불량, 오심, 구토, 복부 불쾌감과 같은 위장관 증상이 있을 수 있어요.



우선 혈액검사로 혈구를 확인하고, 영상 검사를 시행해요. 복부 초음파, CT/MRI 검사나 조직검사로 확진해요. PET 검사를 통해 암이 퍼진 정도를 알 수 있습니다.



치료는 비장을 절제하거나 방사선 치료, 항암화학요법을 시행하며 수술하지 않고 방사선과 항암 치료만으로 완치되기도 해요. 비장 절제가 필요한 경우에는 수술 후 방사선과 항암 치료를 병행해요.



비장을 절제하면 감염에 취약해져 중증 패혈증 위험이 높아져요. 폐렴연쇄구균, 수막염균, 인플루엔자 등 예방접종을 시행하고 인플루엔자는 매년 접종을 권장해요. 예방적으로 항생제가 처방될 수도 있어요.  예방은 위험요인을 줄이는 것이 최선인데 방사선, 발암물질을 최대한 피하고, 금연과 금주가 필요합니다.

								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('15','코가 자주 막히고 코피가 나요, 비강의 악성 신생물(비강암)','9c385144-9114-4125-8235-51d4376acc45.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:35:18.000000000','RR/MM/DD HH24:MI:SSXFF'),'									코의 안쪽에 있는 빈 공간을 비강과 부비동이라 부르는데 각각에 생긴 암을 비강암, 부비동암이라 부릅니다.

대부분 편평세포암으로, 발생원인은 명확하지 않지만 나무 분진, 금속 분진이 많이 발생하는 작업 환경, 흡연이 암을 유발한다고 알려져 있어요.



부비동암은 초기 증상이 없거나 부비동염과 증상이 비슷해 조기발견이 어렵습니다. 반복적으로 한쪽 코가 막히고, 코피가 난다면 비강암 또는 부비동암을 의심할 수 있습니다. 후각 감소 증상이 동반될 수도 있어요.



코에 생기는 암은 위치나 주변 침범 정도에 따라 증상이 다른데,

구강을 침범하면 치아가 흔들리고 안와를 침범하면 복시, 안구 돌출, 시력감소 증상이 생길 수 있으며 안면을 침범했다면 안면통증, 감각이상이 발생할 수 있고 뇌신경을 침범하면 뇌신경 마비 증상이 발견됩니다.



내시경으로 비강과 부비동을 관찰하고 조직검사를 하는데 악성으로 확진되면 암이 퍼진 정도와 림프절 전이를 확인하기 위해 CT, MRI, 복부 초음파, X선 촬영, 뼈 스캔(bone scan), PET 검사 등을 시행합니다.



암과 주변 조직을 제거하는 수술과 방사선, 항암요법을 병행해요. 눈이나 뇌 같은 주요 부위를 보존하고 되도록 안면 변형이 적도록 수술을 합니다. 수술 전, 후 방사선과 항암화학요법으로 치료 효과를 높여요.



비강과 부비동에 발생한 암 절제는 얼굴 외형의 변형이나 언어 장애, 삼킴 문제를 발생시키기도 합니다. 변형 부위를 재건하는 추가 수술과 언어치료, 연하장애 재활이 수술 이후의 삶에 도움을 줍니다. 

비강암과 부비동암을 예방하기 위해서는 금연이 필수라는 사실을 기억하세요. 
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('16','쉰 목소리가 오래 지속되고 있어요 - 후두암','74cf32dc-e0b9-4584-affb-690bffd03fc4.png',1,to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:32:57.000000000','RR/MM/DD HH24:MI:SSXFF'),'									후두암은 목소리를 내고 숨을 쉬며 기도를 보호하는 후두에 비정상적인 세포가 증식해 생긴 악성종양입니다. 주로 편평세포암으로, 성문과 성문상부에 많이 생겨요.



55세 이상의 남성에서 많은데 가장 큰 위험 요소는 흡연으로, 흡연과 함께 음주를 한다면 위험성은 더 높아집니다. 위식도역류병(GERD), 성대의 만성 염증도 원인으로 알려져 있어요. 페인트, 석면, 목재 먼지, 유해 가스에 노출된 작업장도 후두암 위험을 높일 수 있습니다.



초기에 쉰 목소리가 나는데 2주 이상 증상이 지속된다면 검사를 받아보세요. 암이 진행되면 목에 이물감과 통증이 생기고 림프절 전이가 되면 목에 혹이 만져져요. 숨쉴 때 쌕쌕대는 천명음이 들리고 체중감소도 나타날 수 있어요.



진단을 위해 후두 내시경으로 후두를 관찰합니다. 의심 부위는 조직검사를 진행해 후두암을 확진해요. CT, MRI, PET 검사로 암의 병기를 결정해요.



수술과 방사선 치료, 항암화학요법으로 치료합니다. 내시경적 레이저 수술은 수술 후 목소리 보존률이 높지만, 암이 진행된 경우에는 개방적 수술이 필요합니다. 

방사선 치료 역시 목소리 보존이 가능하고 항암화학요법을 병행하여 치료 효과를 높여요.



증상이 초기에 나타나기 때문에 후두암은 다른 암에 비해 조기 발견되고 치료 예후도 좋아요. 그래도 예방을 위해 반드시 금연, 금주하세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('28','가만히 있는데 골절? 뼈에 생긴 암, 악성 골종양','eb9cb33b-a672-4315-81d0-9379b5266315.png',7,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 15:49:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'									우리 몸의 뼈에서 발생하는 암으로, 흔하진 않지만 팔, 다리 긴뼈의 말단 부위나 무릎 주위에 주로 발생해요. 

뼈 자체에서 발생하는 원발성 골종양과 다른 부위에서 뼈로 전이된 전이성 골종양으로 나누어집니다. 주로 유방암, 폐암, 전립선암이 뼈로 전이되고 원발성 골종양으로는 골육종, 유잉 육종, 연골육종이 있어요.



원인은 명확하지 않지만 방사선이나 약물 노출, 유전 등이 골육종 발생과 관련이 있다고 알려져 있습니다. 

증상은 암 발생 부위의 통증과 부종으로 통증은 밤에 악화되며 피로감을 느낄 수 있습니다. 뼈가 약해져 골절이 일어날 수도 있어요. 통증 없는 덩어리가 발견되기도 해요.



우선 X-선 촬영을 하고 의심 병변이 발견되면 MRI검사, CT검사, 뼈 스캔(bone scan)검사, PET검사 등 영상 검사로 종양의 위치, 크기, 진행 정도를 알 수 있어요. 

골종양을 확진하기 위해서는 조직검사가 필요합니다. 전이된 암이라면 조직검사로 원발암의 위치 파악이 가능해요.



환자의 나이, 건강상태, 암의 단계, 종양의 크기와 위치로 치료 방법을 결정하는데 크기가 큰 종양은 방사선 치료나 항암 치료로 암 크기를 줄인 후 수술하기도 해요.



최근에는 인공 관절, 자가 뼈 이식 등으로 결손 부위를 채우고 사지를 보존하는 방식으로 수술합니다.

다만 암이 신경, 혈관을 침범했거나 수술 후 암이 다시 재발한 경우에는 절단술이 필요할 수 있습니다. 절단 수술 후에는 인공 보조기 등으로 일상생활을 할 수 있도록 재활 치료를 받습니다.



골종양은 우리 몸 어느 뼈에서든 발생할 수 있습니다. 어린 아이들의 경우 성장통으로 착각하고 넘겨 발견이 늦어질 수 있기 때문에 아이들이 의심 증상을 호소한다면 병원을 찾아 주세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('29','목에 덩어리가 만져져요 - 비인두암','874eeaa7-ad95-416e-abea-dd1901457f27.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:32:26.000000000','RR/MM/DD HH24:MI:SSXFF'),'									비인두는 코 뒤쪽을 지나 두개저 아래에서 인후두가 시작되는 부위입니다. 코로 들어온 공기는 비인두를 지나 폐로 이동해요. 비인두암은 비인두에 생기는 악성종양입니다.



발생 원인은 명확하지 않지만 30~50세 성인에서 주로 발병하며 여성보다는 남성에서 주로 발견됩니다. 중국인들이 많이 사는 지역에서 많이 발생해 유전적 성향이 있다고 보는데, 엡스타인-바 바이러스(EBV) 감염과 소금에 절인 음식, 발효식품을 가열할 때 발생하는 화학물질 등도 원인으로 꼽힙니다. 흡연과 음주 역시 발병 위험을 높이는 요인이에요.



초기에는 아무런 증상이 없습니다. 목에 덩어리가 만져져 비인두암 전이로 진단받는 경우가 많아요. 중이염이 발생하거나 한쪽 귀가 먹먹한 통증, 청력 저하, 한쪽 코막힘, 코피 증상이 나타날 수도 있어요. 암이 뇌신경을 침범했을 경우 뇌신경 마비 증상이 나타나요.



내시경을 통해 비인두를 관찰해 진단이 가능해요. 조직을 떼어 현미경으로 조직검사를 해서 확진합니다. 암이 퍼진 정도를 알기 위해 X-선 촬영, CT 검사, MRI 검사, PET 검사를 진행해요. EBV 감염에 의한 것인지 확인하기 위한 검사도 시행해요.



비인두암은 수술로 치료하기 어려워요. 방사선 치료와 항암 화학요법을 병행하여 치료합니다. 방사선 치료 후유증인 구강 건조를 예방하기 위해 수분 섭취를 많이 하고 충치 예방이 필요합니다.



조기에 발견하면 완치가 가능합니다. 귀가 먹먹하거나 지속적인 코막힘 등 증상이 있을 때 병원을 방문해 검사를 받으세요. 흡연과 음주를 삼가고 소금으로 절인 음식 섭취를 줄이는 것도 비인두암 예방법입니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('30','예방접종으로 예방할 수 있는 암, 자궁경부암','7578b494-63ed-44f4-abe0-63315f06f591.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:33:42.000000000','RR/MM/DD HH24:MI:SSXFF'),'									20~50대 여성이라면 주의해야 하는 암입니다. 대부분 사람유두종바이러스(human papilloma virus, HPV) 감염이 원인인데, 보통 성관계로 옮겨요. 

여성이 평생 사람유두종바이러스에 감염될 확률은 80%지만 바이러스에 감염되었다고 모두 암에 걸리는 건 아닙니다. 다양한 파트너와의 성관계, 흡연, 면역력 저하, 클라미디아 성병 등도 위험요인이 될 수 있어요.



성관계 중 아프거나 질 출혈이 있다면 검사를 받으세요. 운동 후, 생리 후, 폐경 후에 질 출혈이 있거나 갑자기 월경량이 늘거나 냄새 나는 질 분비물이 보일 수 있습니다. 소변을 볼 때 통증을 느끼거나 허리가 아프고 다리가 붓는 증상도 나타날 수 있습니다. 이런 증상이 2주 이상 계속된다면 병원을 찾으세요.



자궁경부의 세포를 채취하는 자궁경부 세포검사(pap smear) 후 비정상 세포가 보인다면 질확대경 검사(colposcopy)로 작은 조직을 떼어내서 암세포가 있는지 확인합니다. 

암세포가 관찰되면 자궁경부를 원뿔 모양으로 떼어내는 원추절제술(conization)을 시행합니다.



자궁경부암을 진단받으면 흉부 X-선 검사, 배와 골반의 CT와 MRI 검사를 시행해 암 전이 여부를 확인하고 1~4기까지 병기를 설정합니다. 병기와 환자의 나이, 자녀 계획에 따라 치료방법이 달라져요. 

임신 중이면 임신 기간과 병기에 따라 치료가 달라져요. 예를 들어 임신 3기이고 자궁경부암 초기라면 출산 후 치료하게 됩니다. 치료는 수술, 방사선 치료, 화학요법이 있습니다.



사람유두종바이러스에 감염되지 않도록 예방접종을 하는 것이 중요합니다. 자궁경부암 예방백신은 10~25세의 모든 여성이 접종 대상입니다.



무엇보다도 정기 검진으로 암을 일찍 발견하는 것이 중요합니다. 20세 이상 여성은 2년 간격으로 자궁경부 세포검사를 받는 것을 권합니다. 
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('31','입에 생긴 궤양이 잘 회복되지 않아요 - 구강암','266c4182-3bcd-4e4f-aab2-a8dbf1d4c2e4.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:34:25.000000000','RR/MM/DD HH24:MI:SSXFF'),'									혀, 입술, 볼 안쪽, 잇몸에 생기는 암으로 주로 40세 이후, 여성보다 남성에서 더 잘 발생합니다. 편평상피세포암이 대부분으로 제대로 치료하지 않으면 주변 연조직, 목 림프절로 전이될 수 있습니다.



흡연, 과도한 자외선 노출 등이 원인인데 음주, 구강의 반복적인 자극, 구강 위생 불량, 비타민 결핍, 만성 칸디다증 등도 위험요인으로 꼽혀요. 흡연은 가장 중요한 원인으로 기간이 길고 흡연량이 많을수록 위험도가 올라가요. 흡연과 음주를 모두 할 경우, 구강암 발생률이 15배 높아져요.



입술이나 입에 생긴 상처나 궤양이 치유되지 않고 통증이 지속된다면 구강암을 의심할 수 있습니다. 입에서 쉽게 피가 나고, 하얀색이나 붉은색 반점이 발견돼요. 턱밑이 붓거나, 씹거나 삼키는 것이 어려워지고 이물감을 느낄 수도 있습니다. 이런 증상들이 2주 이상 지속될 경우에는 병원을 찾아주세요.



구강 안을 관찰하여 의심 부위를 조직검사하면 구강암을 진단할 수 있습니다. 진단이 되면 암이 퍼진 정도를 알기 위해 X-선 촬영, CT 검사, MRI 검사, PET 검사를 진행해요.



구강암은 위치와 병기에 따라 치료가 달라져요. 수술을 통한 절제, 방사선 치료, 항암제로 치료합니다. 절제 부위는 재건술로 결손 부위를 복구하고 수술 후 기능장애가 발생한 경우에는 언어 치료가 필요해요.



구강암은 의외로 조기발견을 못 하고 진행된 후에 발견됩니다. 매년 치과 정기검진으로 구강암을 조기 발견하고 치아는 청결하게 관리하는 것이 좋습니다. 예방을 위해 금연, 금주는 필수며 햇빛 노출이 잦다면 모자나 양산으로 자외선을 차단해야 합니다.


								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('32','갑상선의 악성 신생물, 갑상선암','312e3a2e-205d-4366-933f-b38d24856605.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:31:03.000000000','RR/MM/DD HH24:MI:SSXFF'),'									우리나라 갑상선암의 90~95%는 유두암인데 몇 년에 걸쳐 천천히 자라는 성질이 있어요. 초반에 발견하기 쉬워 예후가 좋은 암입니다.

여포암은 2~3% 정도로 폐나 뼈로 전이돼 예후가 좋지 않아요. 수질암은 우리나라 갑상선암의 1~2% 정도로 가족 중 수질암이 있다면 자신도 발병할 가능성이 높아요.



갑상선암은 증상이 거의 없고 건강검진 중 많이 발견됩니다. 드물게 목에 멍울에 만져지거나 쉰 목소리가 나고 음식물을 삼키기 어려울 때가 있어요. 목에 림프절이 지속적으로 만져진다면 병원으로 오세요.



진단은 가족력을 확인하고 갑상선 초음파로 결절을 관찰합니다. 

의심되면 미세침흡인세포검사로 세포를 채취해 확인하고 갑상선의 기능, 유전성 여부 확인을 위해 혈액검사를 해요. 전이 여부를 확인하기 위해 CT 검사도 할 수 있어요. 



수술로 치료하는데 상태에 따라 갑상선의 일부나 전체를 제거한 후 근처 림프절까지 제거할 수 있습니다. 유두암이나 여포암은 요오드를 잘 흡수하기 때문에 몸에 남은 미세한 암세포를 제거하기 위해 수술 후 방사성 요오드 치료를 하기도 합니다.



갑상선 전체를 수술로 절제하면 갑상선 호르몬 약을 평생 먹어야 합니다. 갑상선 호르몬 약은 다른 약과 복용하면 흡수가 안돼 아침 식사 공복에 복용합니다. 드물게 항암요법과 방사선 치료를 하기도 해요.



수술 후 쉰 목소리가 날 수 있습니다. 칼슘 농도를 조절하는 부갑상선이 같이 절제되기 때문에 저칼슘혈증으로 손에 쥐가 나 오그라드는 증상이 나타나기도 해요.



갑상선 호르몬제를 복용하면서 갑상선기능항진증 또는 저하증이 올 수 있어요. 식은땀이 나거나 가슴이 두근거리는 느낌이 든다면 또는 우울하고 기운이 나지 않고 살이 많이 찐다면 병원으로 오셔서 진료를 받으세요.



갑상선암은 생존율이 높으며 수술 후 정기적인 추적관찰이 필요합니다. 갑상선암은 방사선과 각종 생활습관, 유전으로 발생하지만 조기에 발견해서 치료하면 완치할 수 있습니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('33','감기가 잦고 빈혈에다가 골절도 많아요 - 다발골수종','731f4ee9-4bf0-4878-af22-7b76c7f1e888.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:30:30.000000000','RR/MM/DD HH24:MI:SSXFF'),'									면역체계를 담당하는 형질세포(plasma cell)가 비정상적으로 분화, 증식해서 나타나는 혈액암을 다발골수종이라 합니다. 비정상 형질세포는 주로 골수를 침범하기 때문에 골수종세포(myeloma cell)라 부르는데, 골수를 침범해 종양을 만들거나 뼈를 녹여 쉽게 부러지게 해요.



골수 기능도 떨어뜨려 백혈구, 적혈구, 혈소판 수가 감소하고 비정상적 면역 항체인 M단백을 만들어 혈액의 농도가 진해지고 신장 손상을 일으킵니다. 주로 65세 이상과 남성에서 발병합니다. 방사선, 농약, 화학물질 노출과 연관성을 찾고 있지만 아직 발병 원인이 정확히 밝혀지진 않았어요.



골수를 침범하기 때문에 뼈에 통증이 발생하는데, 움직일 때 통증이 더 심하고 뼈가 쉽게 부러지기도 합니다. 뼈가 녹으면서 칼슘이 빠져나와 혈액 내 칼슘 농도가 높아져 오심, 구토, 식욕감소, 변비, 의식장애가 발생하기도 해요. 비정상 항체로 감염에 취약해지고 골수 기능 저하로 출혈이 잘 생기고 빈혈이 나타나요.



M단백의 증가로 신장이 손상되어 소변량이 줄고, 부종, 신부전이 나타날 수 있습니다, 골수종이 신경을 압박하면 팔다리의 기운이 빠지거나 저리고 대소변 조절이 안되는 증상이 나타나요.



진단을 위해 혈액검사, 소변검사, X선 촬영을 시행합니다. 혈액과 소변에서 M단백이 발견되고 적혈구, 백혈구, 혈소판 수치가 떨어져 있으며 혈액 속 칼슘 수치가 높으면 다발골수종을 의심합니다. MRI와 PET 검사로 발병 위치와 뼈 손실, 침범 정도를 확인하고 확진을 위해 골수검사를 실시합니다.



항암화학요법이 가장 기본적인 치료법입니다. 항암제로 골수종세포를 파괴하고 뼈 통증이 심한 경우 진통제와 국소 방사선치료로 조절합니다. 항암화학요법을 마치면 자가조혈모세포이식을 시행하기도 합니다. 



다발골수종은 장기간에 걸쳐 치료합니다. 치료 중 감염, 빈혈, 신기능 장애, 골절 등 합병증이 발생하지 않도록 주의해야 합니다. 적당한 움직임과 운동, 칼슘과 비타민D 복용은 뼈를 튼튼하게 하지만, 너무 무거운 물건을 들거나 뼈에 충격을 주는 운동은 골절 위험이 있으니 피해 주세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('34','멍이 잘 들고 출혈이 잦아요 - 급성 림프모구성 백혈병(ALL)','0b4dc62c-8f89-4691-a012-cda96d0a9cdf.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:32:06.000000000','RR/MM/DD HH24:MI:SSXFF'),'									백혈구 중 림프구계 백혈구가 악성 세포로 변하면서 급성으로 발병하는 백혈병을 급성 림프모구성 백혈병(acute lymphoblastic leukemia, ALL)이라고 합니다. 모든 연령에서 발생 가능하며, 소아 백혈병의 대부분을 차지합니다. 다운 증후군 등 유전적 요인과 엡스타인-바 바이러스(EBV) 또는 인간면역결핍바이러스(HIV) 감염, 방사선 노출, 발암 물질 노출 등이 위험 요인입니다.



초기에는 미성숙 세포가 생성되면서 정상 적혈구, 백혈구, 혈소판 감소에 의한 증상이 나타나요. 멍이 잘 들고 출혈이 잘 일어나며, 빈혈, 피로감, 전신쇠약 등의 증상이 나타나고 감염에 취약해요. 미성숙 림프구인 백혈병 세포가 간, 비장, 림프절, 뼈 등을 침범할 경우 간과 비장, 림프절이 커지고 뼈 통증이 발생해요.



혈액검사로 백혈구, 적혈구, 혈소판 수치를 확인하고 말초혈액도말검사로 혈액 세포 모양, 개수, 분포를 확인해요. 이상이 발견되면 골수 검사를 시행하는데 미성숙한 백혈병 세포가 관찰되면 진단합니다. 표면항원검사, 염색체 검사, 중합효소연쇄반응 등을 시행해 백혈병을 명확히 분류합니다. 다른 장기 침범 여부를 확인하기 위해 X선 촬영, CT, MRI 검사를 진행합니다.



백혈병은 항암화학요법으로 관해를 유도하는데, 골수 내에 백혈병 세포가 5% 미만으로 감소하고 백혈병 증상이 사라진 상태를 ‘완전 관해’라 합니다. 



항암제 여러 개를 복합적으로 사용하는데, 완전 관해 후 남아있는 백혈병 세포를 완전히 제거하고 재발을 막으려 공고요법을 시행합니다. 중추신경계인 뇌와 척수로 재발이 잦아 척수강 내로 항암제를 주입하거나 방사선요법을 시행해요.



치료 후 재발 없이 유지하기 위해 2년 정도 항암제를 더 복용하기도 합니다. 일부 환자들에서는 관해유도요법이 끝나고 난 뒤에 동종조혈모세포이식을 시행합니다.



백혈병은 장기간에 걸쳐 치료하는데 치료 중 면역력 약화로 인한 감염을 주의해야 합니다. 위생에 주의하며 날 것은 피하고 손을 철저히 씻고 감염 증상을 보일 땐 적절한 항생제로 조기 치료합니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('35','위암 발생 위험이 높아져요 - 헬리코박터 파일로리균 감염','65582d86-39da-4487-a2d1-70a02c7fe985.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:34:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'									위는 위산으로 음식물을 소화하기 때문에 위에는 강한 산을 견디기 위한 특정 점액층이 존재합니다. 

헬리코박터 파일로리균은 이 점액층을 무너뜨리고 염증을 일으키며 위 조직에 상처를 만들어요. 상처가 지속되면 위암까지 진행될 가능성이 높죠.



헬리코박터 파일로리균이 어떻게 우리 몸에 들어오는지는 아직 명확하게 밝혀지지 않았어요. 침, 구토물, 대변 등으로 사람 간에 전파된다고 하며, 균에 감염된 사람과 집단생활을 하거나 오염된 물을 마시고 비위생적으로 조리한 음식을 먹으면 전염될 수 있어요.



감염되어도 수년간 증상은 없어요. 그렇지만 위점막에 염증이 생겨 윗배에 불편함을 느껴요. 시간이 흐르면 위점막이 파이는 위궤양으로 진행합니다. 체중이 점점 줄고 메스껍고 구토를 하기도 하죠.



궤양이 진행하면 합병증이 나타날 수 있어요. 궤양이 깊어져 출혈이 발생하면 토혈을 하거나 검은색 변을 보기도 해요. 심하면 위에 구멍이 나서 복막염으로 진행합니다. 

가장 큰 문제는 손상된 위점막에서 위암 발생 위험이 증가하는 것입니다. 



진단을 위해 혈액검사, 위내시경, 요소호기검사(urea breath test)를 진행해요. 치료는 나이, 중증도, 복용하고 있는 약에 따라 다릅니다. 

기본적으로 균을 없애기 위해 항생제를 복용합니다. 손상을 입은 위점막을 치료하기 위해 위점막을 보호하는 약, 위산이 적게 분비되도록 하는 약을 먹어요. 



감염 예방을 위해서는 청결한 생활 습관이 중요합니다. 식사 전 비누와 물로 손을 깨끗이 씻어주세요. 요리할 때 음식 재료를 깨끗하게 씻는 것도 중요합니다. 물은 마셔도 안전한 물인지 반드시 확인해주세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('36','밤만 되면 가려워요 - 옴','7cb35f25-37e9-4377-b03c-04ff00aa55da.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:32:35.000000000','RR/MM/DD HH24:MI:SSXFF'),'									옴은 아주 작은 진드기로 사람의 피부나 털에 기생해요. 

사람과 사람 간에 전염되며 전염성이 강해 침구나 동물을 통해서도 옮겨 다녀요. 

어린이집이나 학교, 요양원 등에서 종종 발생하며 걸리면 함께 생활하는 사람 모두 전염될 수 있어요.



감염 4~6주 후 증상이 나타나는데 가려움증을 유발합니다. 옴은 주로 밤에 활동하는데 암컷이 피부 속을 옮겨 다니며 알을 낳습니다. 이때 만들어지는 분비물에 알레르기 반응이 나타나 심한 가려움을 느끼게 됩니다.



파고 들어간 피부의 입구에는 하얀 살비듬이 보이고 굴 하부에는 작은 수포나 고름이 만들어집니다. 손가락, 발가락 사이나 손목 안쪽, 겨드랑이, 사타구니 등 부드러운 피부 부위에 잘 발병하는데 벌레에 물린 것 같은 작은 붉은 발진이 관찰됩니다. 어린 아이는 손바닥, 발바닥, 두피에 잘 생겨요. 가렵다고 심하게 긁으면 2차 감염을 유발할 수 있습니다.



병원을 찾으면 의사가 피부를 확인하고 의심되는 부위의 피부를 긁어내 현미경으로 검사해요. 표본에서 옴 진드기나 알이 관찰되면 진단합니다.



치료로는 의사가 처방한 크림이나 로션을 자기 전 얼굴을 빼고 전신에 바르면 됩니다. 

다음 날 아침 약을 닦거나 씻어내면 죽은 옴 진드기들을 볼 수 있어요. 가려움증이 심하다면 항히스타민제를 복용해요. 긁은 상처에 2차 감염이 생겼다면 항생제를 사용해 치료해요.



옴은 쉽게 번지기 때문에 증상이 없어도 함께 생활한 가족들도 반드시 함께 치료해야 합니다. 입었던 모든 옷과 침구, 수건은 뜨거운 물로 삶아 세탁하고 뜨거운 건조기로 건조하거나 다림질하세요. 

세탁할 수 없는 물건은 비닐봉지에 밀봉하여 1주일 이상 넣어두면 옴 진드기가 굶어 죽어요. 개인위생수칙을 지키고 의류/침구류를 삶아 세탁하면 예방할 수 있어요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('37','기생충이 폐에서 문제를 일으켜요 - 폐흡충증','ff61cc7f-67f9-4ecc-9e9c-facd5768bb0e.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:31:12.000000000','RR/MM/DD HH24:MI:SSXFF'),'									폐흡충(Paragonimus westermani)이라는 기생충 감염을 ‘폐흡충증’이라고 합니다. 민물에 사는 가재나 게를 날로 먹었을 때 감염됩니다.



6~8주의 잠복기를 가진 후 증상이 나타납니다. 피낭유충의 상태로 음식물을 통해 들어와 소장에서 피낭을 벗고 유충이 됩니다. 유충이 소장 벽에서 복강으로 나와 횡격막과 늑막을 거쳐 폐에 도달한 후 성충이 되어 폐에서 알을 낳으며 기생해요.



폐흡충은 폐에 기생하며 주머니를 만들고 알을 낳아 염증을 일으킵니다. 폐 조직이 괴사하고 출혈이 발생해 심한 기침과 호흡곤란, 쇠녹물색의 가래, 객혈 등의 증상이 나타날 수 있어요. 증상이 결핵과 비슷하기도 합니다. 늑막염, 기관지확장증, 폐농양, 폐 섬유증 같은 합병증이 발생하기도 해요.



폐흡충은 폐에 기생하지만 뇌나 척수, 눈 등에 침범하기도 해요. 뇌나 척수를 침범하면 발작, 뇌출혈, 마비 등의 증상이  발생합니다. 복강의 장기를 침범하면 복통을 일으키며 농양을 형성하기도 합니다.



민물 가재나 참게를 날로 먹은 후 증상이 나타난다면 서둘러 병원을 찾으세요. 음식 섭취와 거주지역을 참고해 감염이 의심되면 검사가 필요해요. 객담검사와 대변검사에서 알이 발견되면 폐흡충증을 확진해요. 혈액검사로 폐흡충 특이 항원에 대한 항체를 확인하고 흉부 X-레이와 흉부 CT 검사로 폐 손상을 확인합니다.



프라지콴텔(Praziquantel) 성분의 구충제로 치료합니다. 의사가 처방한 약을 복용해야 치료할 수 있습니다. 예방을 위해 민물 가재나 게를 생으로 먹지 않고 폐흡충 유행 지역을 방문했다면 생수나 물을 끓여 드세요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('38','날로 먹는 민물고기는 위험해요 - 간흡충증','4133a153-94a6-42cd-8854-4a0110956164.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:31:17.000000000','RR/MM/DD HH24:MI:SSXFF'),'									민물고기를 섭취하면 간디스토마라고 하는 간흡충에 감염될 수 있습니다. 쓸개즙이 분비되는 담관에 기생하며 담관암을 일으킬 수 있어 주의해야 합니다. 강가나 호숫가 주변에 살면서 민물고기를 익히지 않고 먹는 경우 감염될 수 있습니다. 중국, 한국과 같은 동아시아와 동남아시아 지역에서 많이 발생해요.



초기에는 증상이 없다가 기생충 수가 늘어나면 피로, 식욕부진과 메스꺼움 등의 증상을 느껴요. 배가 아프고 소화가 안 되며, 설사를 하기도 해요. 간흡충이 담도를 막아 담즙이 정체되고 담관이 자극되어 나타나는 증상입니다.



증상이 심하지 않으면 감염되었는지 모르는 경우도 많습니다. 하지만 담관염이 만성화되면 담관암으로 진행할 수 있습니다. 간흡충에 감염되면 담관암 발생 위험이 2~3배 증가한다고 해요. 민물고기를 먹은 적이 있고 소화불량이나 복통이 발생하면 간흡충증을 의심해봐야 합니다.



대변검사에서 간흡충 알이 발견되면 진단해요. 혈액검사로 간흡충에 대한 항체를 확인할 수도 있어요. 복부초음파나 CT, MRI, 내시경적 역행성 담췌관조영술(ERCP) 등으로 담관의 불규칙한 확장을 관찰하고 담낭염, 담석, 담관염, 담관암 등 합병증 여부를 평가해요.



간흡충은 프라지콴텔(praziquantel) 성분의 구충제로 치료해요. 보통 체중 1kg당 25mg 용량으로 3~4회/일 1일 복용하며, 2~3주 뒤 대변검사로 치료 결과를 확인해요.



세계보건기구(WHO)에서는 간흡충을 생물학적 1급 발암물질로 지정했어요. 담관암 발생 위험을 줄이기 위해 간흡충 감염 예방은 중요합니다. 민물고기는 반드시 익혀 먹고, 물고기를 조리한 도마나 칼로도 감염될 수 있어 사용했던 주방 기구는 끓는 물에 소독해 사용해야 합니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('39','면역 저하 환자는 조심하세요 – 폐포자충 폐렴','d5660b04-e1d1-4fb2-8959-139dc930a923.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:32:15.000000000','RR/MM/DD HH24:MI:SSXFF'),'									사람폐포자충이라는 곰팡이가 폐에서 일으키는 염증이예요. 열이 나면서 숨이 차고, 가래가 없는 기침을 해요. 식은땀이 흐르고 체중이 점점 줄기도 합니다. 증상은 몇 달 동안 서서히 나타납니다. 치료하지 않으면 폐가 망가져 생명을 위협받을 수 있어요. 



주로 면역력이 떨어진 사람에게 잘 나타나요. 후천성면역결핍증후군 환자나 장기 이식 후 면역억제제를 복용 중인 환자, 그리고 항암약물치료나 스테로이드 치료 중이라면 폐포자충 폐렴이 발생할 가능성이 커집니다.



진단하기 위해 의사는 병력을 조사하고 복용 약을 확인해요. 흉부 X-선 촬영, 흉부 CT 검사로 폐 상태를 확인합니다. 가래를 수집하거나 기관지 내시경으로 검체를 얻어서 곰팡이가 실제로 있는지 검사합니다.



폐포자충 폐렴은 항생제를 사용해서 치료합니다. 면역력을 떨어뜨리는 질환을 앓고 있거나 면역억제제를 복용 중이라면 정기적인 검사를 받는 것이 최선의 예방법입니다. 일부 고위험군의 경우 예방적으로 항생제를 복용하기도 합니다. 
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('40','폐 감염을 일으키는 곰팡이 - 아스페르길루스증','943080f2-903f-415d-a6f7-f941235fa78e.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:35:33.000000000','RR/MM/DD HH24:MI:SSXFF'),'									아스페르길루스 곰팡이가 일으키는 다양한 종류의 감염증입니다. 이 곰팡이는 주로 흙이나 썩어가는 잎, 나무, 건축자재에 살아요. 곰팡이가 있는 곳에서 숨을 들이마시면 공기 중에 떠다니던 포자가 폐로 들어가게 됩니다.



건강한 사람은 면역력이 있어 곰팡이를 없애지만, 질병을 앓고 있는 사람은 위험할 수 있습니다. 천식, 낭포성섬유증과 같은 만성 호흡기 질환을 앓고 있다면 곰팡이에 알레르기 반응을 보일 수도 있습니다. 



특히 백혈병 환자, 항암치료 중인 환자, 장기 이식 환자 등 면역력이 저하된 환자에서는 곰팡이가 폐 이외에 부비동, 뇌, 피부, 신장까지 침범할 수 있습니다. 



흉부 X선 검사와 CT 검사를 시행해 폐 상태를 확인합니다. 가래를 채취해 곰팡이가 있는지 조사하고, 상황에 따라 기관지 내시경으로 폐 조직을 떼어 확인하기도 합니다.



침습성 아스페르길루스증은 항진균제로 장기간 치료합니다. 폐에 생긴 곰팡이 덩어리는 정기적으로 검사하며, 증상이 있으면 수술로 폐를 절제해 치료합니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('41','비둘기 배설물이 많은 곳에서 조심하세요 - 크립토콕쿠스증(효모균증)','80c06076-f45d-4861-bc10-e9153c506021.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:32:45.000000000','RR/MM/DD HH24:MI:SSXFF'),'									‘크립토콕쿠스 네오포르만스’라는 곰팡이에 감염되는 질환입니다. 이 곰팡이는 비둘기, 닭의 배설물로 오염된 흙에서 살아요. 근처에서 숨을 쉬면 곰팡이가 폐로 들어오면서 감염됩니다.



이 곰팡이는 폐렴이나 뇌막염을 일으킵니다. 폐렴으로 기침이나 흉통, 호흡곤란이 생길 수 있고, 뇌막염이 발생하면 뇌수막이 자극되면서 목 뒤가 뻣뻣해지고 두통이 생깁니다. 드물게 피부를 침범하면 피부에 고름 없는 여드름 같은 구진이 생기고 궤양으로 변하기도 해요.



기저질환이 있어 면역억제제를 오래 복용한 환자, 장기 이식 환자, 후천성면역결핍증(AIDS) 환자 등 면역력이 떨어진 사람이 크립토콕쿠스증에 걸릴 위험성이 높아요. 건강한 사람은 잘 걸리지 않아요. 곰팡이가 들어와도 면역력으로 없애기 때문이죠.



진단은 병력을 알아보고 복용 약을 확인합니다. 폐 상태를 확인하기 위해 흉부 X선 촬영과 균 배양검사를 시행합니다. 뇌척수액 검사와 뇌 CT, MRI 검사를 통해 곰팡이가 뇌수막까지 퍼졌는지 확인해요.



치료로 항진균제를 주사로 맞거나 알약으로 먹어요. 면역력이 낮은 사람은 장기간 항진균제를 먹어야 할 수도 있습니다.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('42','통기가 잘 안되는 내 신발이 혹시 무좀의 원인? - 발백선(무좀)','11d489ee-abb9-4a32-8288-1a650a427231.png',1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:35:25.000000000','RR/MM/DD HH24:MI:SSXFF'),'									무좀은 피부사상균 감염으로서, 피부 표면의 각질층에 침범해 번식해요. 피부 표면 백선이 가장 잘 발생하는 곳은 ‘발’이에요. 무좀(발백선)은 전체 백선의 40% 정도를 차지할 정도로 흔하며 성인 남자에게 많이 발병해요. 



무좀의 곰팡이균은 환자에게서 떨어진 각질을 통해 감염됩니다. 목욕탕, 수영장과 같은 곳에서 맨발로 돌아다니거나 양말, 슬리퍼, 신발을 타인과 공유할 때 감염될 수 있어요. 축축한 환경에서 잘 번식하기 때문에 통풍이 안 되는 신발은 땀이 차 곰팡이균이 활동하기 좋은 환경이 돼요.



발가락 사이가 하얗게 짓무르고 피부가 갈라지고 각질이 벗겨지는 증상이 가장 흔합니다. 3~4번째 발가락과 4~5번째 발가락 사이에 많이 발생해요. 가렵고 발 냄새가 심해지며 주변 발가락과 발바닥까지 퍼질 수 있어요.



발바닥과 발 옆 부분에 작은 물집이 생기기도 하며 하얀 각질이 가루처럼 떨어지는 형태로도 무좀이 발생해요. 손으로 긁으면 피부가 손상되어 2차 감염이 발생할 수 있으며, 손을 통해 다른 부위로 옮길 수 있어 초기에 치료하는 것이 중요해요.



의사가 눈으로 피부를 관찰한 후 진단을 위해 피부 병변의 각질에서 곰팡이균을 확인합니다. 긁어낸 각질을 배지에 넣고 균을 직접 배양해 확인하기도 해요.



치료는 항진균제를 바르고, 심하면 먹는 항진균제도 함께  복용해요. 연고, 크림, 네일라카, 스프레이 등은 의사와 상의 후  사용합니다. 2차 감염이 생겼다면 항생제 치료 후 곰팡이 치료를  시작해요. 바르는 약은 무좀 부위 3cm 정도를 넓게 최소 4주간  발라야 합니다. 증상이 좋아져도 재발이 잘 되기 때문에 약을  꾸준히 바르세요.



무좀은 손발톱백선을 동반하는 경우가 많고 치료 후에도 발톱에서 재발할 수 있어 손발톱백선도 반드시 치료해야 합니다. 먹는 무좀 치료제는 간에 영향을 미치기 때문에 정기적으로 간수치를 확인하며 사용하는 게 좋습니다. 술은 간손상을 일으키고 무좀 치료제와 상호작용해 부작용을 일으킬 수 있으니 의사와 상의 후 복용하세요.



무좀을 예방하기 위해 수건이나 비누, 양말, 발수건, 슬리퍼 등은 구분해 사용하세요. 젖은 신발이나 양말을 오래 신지 말고 발가락 사이를 깨끗이 닦고 잘 말려야 재발을 막을 수 있어요.
								');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('43','피부에 몽글몽글한 덩어리가 만져져요 - 지방종',null,1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:35:35.000000000','RR/MM/DD HH24:MI:SSXFF'),'지방 세포가 너무 많이 성장해 생긴 덩어리입니다.  천천히 자라고 주로 피부 아래에 생겨요.   생명을 위협하지 않는 양성 종양으로, 여러 개가 생길 수도 있어요.



만져보면 몰랑몰랑하거나 단단한 고무 같고 잘 움직여요.  통증이 없지만 크면서 혈관이나 신경을 눌러 아프기도 해요.  내장에도 지방종이 생길 수 있어요.



원인은 명확히 밝혀지지 않았습니다.  40~60세에 가장 흔히 발생합니다. 대부분 만져보는 것만으로도  지방종을 진단할 수 있어요. 지방종이 크거나 통증이 있다면 다른  종양과 구분하려고 조직 검사를 하거나 CT, MRI 촬영을 시행합니다.



일반적으로 지방종은 치료할 필요가 없지만 미관상 문제가 있거나 움직임에 방해가 된다면 수술로 제거해요. 피부를 작게 절개하고 지방종을 꺼내는 비교적 간단한 수술입니다.');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('44','얼굴이 누렇게 변하고 피곤해요 - A형 간염',null,1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:33:07.000000000','RR/MM/DD HH24:MI:SSXFF'),'
A형 간염 바이러스 감염으로 인해 간에 염증이 생기는 상태로 전염성이 높은 것이 특징입니다. 오염된 음식이나 물, 오염된 물건을 통해 감염될 수 있어요. 감염 후 한 달 정도 뒤에 피로하고 메스껍고 열이 나고 식욕도 떨어집니다. 일주일 안에 얼굴이 노랗게 변하는 황달이 나타나요. 성인은 어린이와 달리 황달 등의 증상이 더 심하게 나타나요.



황달이 있는지 신체검사를 하고 혈액검사를 통해 진단합니다. 특별한 치료약이 없기 때문에 대부분 증상을 완화하는 치료를 합니다. 집에서 단백질이 많은 식사를 하시고 휴식을 취해주세요.



A형 간염은 예방접종으로 예방할 수 있습니다. 한 번 접종한 후 백신에 따라 6~12개월이나 6~18개월 후 추가접종을 하면 95% 이상 간염을 예방할 수 있습니다. 대변에 오염된 음식, 물건이 원인으로 손씻기가 가장 중요합니다. 화장실 사용 후, 외출 후 비누로 손을 깨끗이 씻어주세요. 



A형 간염은 만성 간염을 유발하지 않습니다. 하지만 심한 간 손상을 일으킬 수 있으니 증상이 나타난다면 빨리 병원으로 오셔서 진료를 받으세요.');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('45','쥐젖이 생겼어요(연성 섬유종)',null,1,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:34:38.000000000','RR/MM/DD HH24:MI:SSXFF'),'피부에 생기는 말랑말랑한 형태의 양성 종양으로, 각질 형성세포와 섬유질이 증식해서 생기는데 피부에 돌출된 폴립 형태로 보입니다. 크기는 다양하고 다발성으로 생기기도 해요.



목과 겨드랑이, 눈꺼풀에 잘 발생하며 사타구니, 엉덩이 주름, 유방 아래에도 생길 수 있어요. 통증이나 가려움 등의 증상은 없으며, 겉으로 보기에 사마귀와 비슷해 피부과 의사에게 정확히 진단을 받는 것이 좋습니다.



비만일수록 잘 발생한다고 알려져 있으며 중년 이후에 발생이 증가합니다. 임신 중에도 호르몬에 의해 연성 섬유종이 발생할 수 있어요.



의사가 피부 표면을 관찰하여 진단하는데 크기와 모양, 색깔, 위치, 개수, 피부 상태를 확인해요. 보통 피부색이나 갈색으로 보입니다. 크기가 자라거나 출혈, 여러 색이 혼합되어 보일 경우 피부암과 감별하기 위해 조직검사를 시행합니다.



CO2 레이저나 수술용 가위로 제거합니다. 제거 후 상처가 아물 때까지 물이 닿거나 햇빛 노출을 피하는 것이 좋아요. 스스로 제거하기 위해 면도칼 등으로 잘라내는 것은 감염이 발생할 수 있어 위험합니다. 병원에 가서 치료받으세요.');
Insert into PROJECT_HOSPITAL.HEALTH_BOARD (HB_ID,TITLE,FILEONE,BOARD_COUNT,CREATED_AT,UPDATED_AT,CONTENT) values ('46','뇌를 감싸는 막에서 생기는 종양, 뇌수막종',null,4,to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 12:44:05.000000000','RR/MM/DD HH24:MI:SSXFF'),'뇌수막종은 뇌를 둘러싸고 있는 수막에 생긴 종양으로 뇌종양의 15~30%를 차지합니다. 50~60대에서 자주 나타나고 남성보다 여성에게서 많아요. 대부분 양성종양이고, 악성종양은 드물어요.



대부분의 수막종은 천천히 자라 별다른 증상이 없습니다. 하지만 자라서 뇌 조직을 누르면 다양한 증상이 나타나요. 두통이 심해지고 사물이 두 개로 보이거나 소리가 잘 안 들리고 냄새를 잘 못 맡기도 합니다. 팔다리에 힘이 빠지고 갑자기 발작을 일으키기도 해요.



원인은 밝혀지지 않았지만 머리에 방사선 치료를 받았던 환자에게서 좀 더 흔히 발생하고 신경섬유종증 제2형도 연관이 있는 것으로 알려져 있어요.



진단을 위해 뇌 CT와 MRI 촬영을 진행해요. 수막종 인근에 혈관이 풍부하게 발달하기 때문에 뇌혈관의 상태를 알아보기 위해 뇌혈관조영술을 하기도 해요.



수막종은 천천히 자라기 때문에 크기가 작고 뇌부종이 없다면 정기적으로 검사를 하면서 지켜봅니다. 치료는 수술, 방사선 치료 등을 시행하는데 수술로 수막종을 완전히 제거하는 것이 가장 좋은 치료법입니다. 

인근에 중요한 신경이나 혈관이 있다면 종양을 조금 남기고 지켜보다가 감마나이프 수술 또는 방사선 치료를 해요. 감마나이프 수술은 기준이 있어 의사와 상담이 필요합니다.



수막종을 진단받으면 가족과 친구에게 알려서 도움을 받고, 과일과 채소를 먹고 매일 적당한 운동으로 자신을 돌보세요. 의료진을 믿고 치료받는다면 충분히 치료할 수 있습니다.');
REM INSERTING into PROJECT_HOSPITAL.HOSPITAL
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('SSW','서울윌병원','서울 강남구 압구정로 28길 9','02-351-2649','서울',to_timestamp('24/12/26 10:21:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 16:57:18.000000000','RR/MM/DD HH24:MI:SSXFF'),'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('GSP','스프링의원','경기 남양주시 미금로 235 (다산동) 다산법로메디컬타워2층','031-851-9763','경기',to_timestamp('24/12/26 15:34:12.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 16:59:55.000000000','RR/MM/DD HH24:MI:SSXFF'),'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('GGD','강릉동인병원','강원 강릉시 강릉대로419번길 42','033-524-3690','강원',to_timestamp('24/12/26 15:34:13.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 16:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'),'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('CCT','청주탑요양병원','충북 청주시 서원구 궁뜰로 16 (미평동) 청주탑요양병원','043-857-0905','충북',to_timestamp('24/12/26 15:34:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 16:59:12.000000000','RR/MM/DD HH24:MI:SSXFF'),'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('BJA','조앤조병원','부산 중구 광복중앙로 31','051-360-2690','부산',to_timestamp('24/12/26 15:34:16.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 16:58:49.000000000','RR/MM/DD HH24:MI:SSXFF'),'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('SYZ','양지병원','서울 관악구 남부순환로 1636','02-315-1592','서울',to_timestamp('25/02/04 17:03:49.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('SFR','포레스트한의원','서울 관악구 남부순환로 1623','02-926-5358','서울',to_timestamp('25/02/04 17:05:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('SHM','한마음의원','서울 강동구 양재대로 1317','02-383-2795','서울',to_timestamp('25/02/04 17:06:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('SHB','햇빛병원','서울 강북구 도봉로 74','02-446-0955','서울',to_timestamp('25/02/04 17:07:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('GDT','동탄제일병원','경기 화성시 삼성1로 144-6','031-841-4462','서울',to_timestamp('25/02/04 17:08:45.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('GTZ','톤즈의원','경기 안양시 동안구 시민대로 202','031-109-7566','서울',to_timestamp('25/02/04 17:09:41.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('GSN','스노우의원','강원특별자치도 원주시 능라동길 61','033-428-6513','강원',to_timestamp('25/02/04 17:10:40.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('GBR','바로그의원','강원특별자치도 강릉시 경강로 2090','033-803-5923','강원',to_timestamp('25/02/04 17:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('CRM','리움의원','충북 청주시 상당구 중고개로 129','043-421-1706','충북',to_timestamp('25/02/04 17:13:46.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('JYS','예수병원','전북특별자치도 전주시 완산구 서원로 365','063-230-8114','전북',to_timestamp('25/02/04 17:15:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('JMZ','미즈여성아동병원','전남 순천시 조례1길 3','061-571-7497','전남',to_timestamp('25/02/04 17:16:51.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('KGT','금탑한의원','경북 구미시 구미중앙로 52','054-104-2229','경북',to_timestamp('25/02/04 17:17:51.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('KDC','대추밭백한의원','경북 경주시 강변로 60','054-372-9618','경북',to_timestamp('25/02/04 17:18:47.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('BBR','바로그의원','부산 부산진구 중앙대로691번길 5','051-241-9827','부산',to_timestamp('25/02/04 17:19:56.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/05 10:37:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'1');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('BYA','유앤아이의원','부산 부산진구 중앙대로 677','051-232-9827','부산',to_timestamp('25/02/04 17:20:51.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('BGA','광안자모병원','부산 수영구 수영로 555','051-774-1628','부산',to_timestamp('25/02/04 17:21:27.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'0');
Insert into PROJECT_HOSPITAL.HOSPITAL (HP_ID,HP_NAME,HP_ADDRESS,HP_NUMBER,HP_REGION,CREATED_AT,UPDATED_AT,QUIT) values ('SBB','봉봉성형외과','서울 강남구 논현로123길 4-1','051-360-2690','서울',to_timestamp('25/02/05 10:19:39.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/05 10:37:24.000000000','RR/MM/DD HH24:MI:SSXFF'),'1');
REM INSERTING into PROJECT_HOSPITAL.HP_MEMBER
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG1','123ASDasd!','SWMG','과장','김진수','010-0000-0000','서울시 강남구 압구정동,309-1509,06023',to_timestamp('24/12/26 17:31:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'췌장암,당남암,췌장염,담석증','서울대학교 내과학 박사','성균관대학교 의과대학 내과 교수',null,null,null,null,null,'700522-1******','0',6,'$2a$10$9EvwOQnrzvbNTa3WV0i5humkW6CH7Mfo.mZfc6HsRvSzoOrTWMcvC');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS2','123ASDasd!','SWGS','교수','김성진','010-2222-2222','서울시 서초구 서초동,405-605,05153',to_timestamp('24/12/27 15:15:46.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/07 10:02:26.000000000','RR/MM/DD HH24:MI:SSXFF'),'갑상선암,부갑상선의종양,갑상선양성종양,경부암','서울대학교 외과학 박사','성균관대학교 의과대학 외과 과장,성균관대학교 의과대학 외과학교실 주임교수','대한갑상선학회 감사','올해의 외과상',null,null,null,'670703-1******','0',2,'$2a$10$ommY8y0H687klbFjOKs/Me2v2KuI4kD0a1xwb23ayoEfHbSbmE09K');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('OBGY3','123ASDasd!','SWOBGY','인턴','오수영','010-1234-5678','서울 마포구 신촌로 지하 90,103-808,04058',to_timestamp('24/12/28 21:38:22.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/07 10:03:40.000000000','RR/MM/DD HH24:MI:SSXFF'),'조산','석사',null,null,null,null,null,null,'850226-2******','0',12,'$2a$10$eltavmYCEptcJVdg.0fwZeCtfYe8vW5ux2S/rYNj0Oa3Q/3fS4rra');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN4','!ZXCqwe3','SWMG','교수','김갑수','010-1111-1111','서울 강남구 가로수길 5,202-303,06035',to_timestamp('24/12/30 19:31:14.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/07 10:05:47.000000000','RR/MM/DD HH24:MI:SSXFF'),'이식마취','서울대 박사','성균관대학교 의과대학 마취통증의학과 교수',null,null,'AN4-3',null,null,'681212-1******','0',8,'$2a$10$9U19xzUVLKSBPjaFOL5sruv8FjyqgKXsN7AaAfpJ8.atecs7UHPXi');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('RD5','lkjMNB5@@','SWRD','교수','박홍석','010-3333-3333','서울 서초구 강남대로 48-3,505-305,06779',to_timestamp('25/01/07 12:46:39.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/07 10:06:44.000000000','RR/MM/DD HH24:MI:SSXFF'),'인터벤션영상의학,중재적심혈관수,혈관기형','서울대학교 대학원 의학 박사','성균관의대 삼성서울병원 영상의학과 교수,성균관의대 삼성서울병원 영상의학과 임상부교수,국립암센터 영상의학과 전문의',null,null,'RD5-3',null,null,'691114-1******','0',9,'$2a$10$m7yUkQFYlXqEZsXQ0OFWRep4j69JMM32s5L3W7/QzcNHBstJ97LhG');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS6','8367KXRsc#!','SWGS','교수','김사부','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/07 17:46:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/07 10:07:57.000000000','RR/MM/DD HH24:MI:SSXFF'),'위암,복강경수술,위장관기질종양','한양대학교 의과대학원 의학 박사','성대의대 교수 및 삼성서울병원 외과 전문의,성균관대학교 의과대학 삼성서울병원 외과 과장,성균관대학교 의과대학 외과학교실 주임교수','대한위장관기질종양연구회 홍보이사,대한위암학회 이사',null,'GS6-1',null,null,'720917-1******','0',11,'$2a$10$7EJlofidv4NdFvf4yi3paeU9BiOkh.BcJ6hDXZ.ado8XNP60YgjCC');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PD7','92yxKF)(','SWPD','교수','서현진','010-3131-3131','서울 성동구 가람길 110,501-1301,04806',to_timestamp('25/01/08 12:12:38.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/07 10:08:46.000000000','RR/MM/DD HH24:MI:SSXFF'),'고위험신생아,미숙아','서울대학교 대학원 의학과 석사','서울대학교병원 인턴과정 수료',null,null,'PD7-1',null,null,'840525-2******','0',13,'$2a$10$Q1PmJ4pc4zVhrNh/9WLdferFRupGF..7qBWClnYxD/xwnpK7wU4Ne');
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('ER8','ER82323','SWER','교수','유연석','010-2323-2323','서울 광진구 강변북로 2140,609-709,05089',to_timestamp('25/01/08 12:21:10.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'응급의학,중환자의학','성균관대학교 의학대학원 석사','삼성서울병원 인턴',null,null,'ER8-1',null,null,'820822-1******','0',7,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('CP9','CP9212','SWCP','과장','한글왕','010-34234-212','경기 성남시 분당구 판교역로 4,하하하하,13536',to_timestamp('25/01/09 16:08:49.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),'마취','서울대학교',null,null,null,'CP9-1',null,null,'861021-1******','1',11,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PC10','PC105555','SWPC','교수','김강우','010-5555-5555','서울 송파구 가락로 2,202-303,05693',to_timestamp('25/01/10 10:15:43.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'공황장애,우울증,불안장애','서울대학교 대학원 의학과 박사','삼성서울병원 정신건강의학과장,삼성서울병원 건강의학센터장,삼성서울병원 건강의학본부장','대한불안의학회 이사장,서울시 정신건강복지 지원단장','2024년 정신건강의학 최우수상','PC10-8','PC10-9',null,'851120-1******','0',5,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('CP11','CP117676','SWCP','교수','김민서','010-7676-7676','서울 강남구 가로수길 19,707-607,06035',to_timestamp('25/01/10 17:40:39.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'진단분자유전학,암유전학,세포치료','서울대학교 대학원 의학 박사','삼성서울병원 임상유전체검사 센터장,성균관대학교 의과대학 진단검사의학과 교수,삼성서울병원 진단검사의학과 전문의',null,'2024 진단검사의학 최우수상','CP11-1',null,null,'750617-2******','0',1,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test1','GS61515','SWGS','과장','김땡땡1','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',16,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test2','GS61515','SWGS','과장','김땡땡2','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:29.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',17,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test3','GS61515','SWGS','과장','김땡땡3','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',18,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test4','GS61515','SWGS','과장','김땡땡4','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',19,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test5','GS61515','SWGS','과장','김땡땡5','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:31.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',20,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test6','GS61515','SWGS','과장','김땡땡6','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:32.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',21,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test7','GS61515','SWGS','과장','김땡땡7','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:32.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',22,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('test8','GS61515','SWGS','과장','김땡땡8','010-1515-1515','서울 송파구 가락로 8-1,302-802,05693',to_timestamp('25/01/16 19:04:33.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'-','-','-','-',null,null,null,null,'1',23,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG12','MG129898','SWMG','레지','테스트','010-9898-9898','서울 동대문구 서울시립대로 5,202-303,02592',to_timestamp('25/01/17 09:42:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 10:01:05.000000000','RR/MM/DD HH24:MI:SSXFF'),'응급의학,이식마취','서울대 박사','삼성서울병원 인턴','대한위장관기질종양연구회 홍보이사',null,null,null,null,'720917-1******','1',14,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('OBGY13','OBGY134433','SWOBGY','교수','윤아름','010-3344-4433','서울 동대문구 서울시립대로7길 3,302-802,02558',to_timestamp('25/01/17 11:59:41.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'자궁경부암,난소암,자궁내막암','고려대학교 산부인과학 박사','삼성서울병원 암병원 부인암센터장,삼성서울병원 산부인과 전문의','대한부인종양학회 상임이사','대한산부인과학회 최우수구연상','OBGY13-6','OBGY13-7',null,'840525-2******','0',14,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS14','GS147534','SWGS','과장','배재문','010-6963-7534','서울 성동구 고산자로 259,808-608,04709',to_timestamp('25/02/03 17:14:37.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'위암,위암수술,로봇수','서울대학교 의과대학원 박사 졸업','삼성서울병원 위암센터장,삼성서울병원 연구기획부장,국립암센터 위암연구과장','미국정맥경장영양학회 회원,유럽정맥경장영양학회 회원',null,null,null,null,'791114-1******','0',37,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS15','GS157928','SWGS','과장','남석진','010-6721-7928','경기 성남시 분당구 서판교로 32,504-804,13479',to_timestamp('25/02/03 17:16:44.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'유방암,유방악성질환,유방암수','서울대학교 대학원 의학 석사 졸업','삼성서울병원 외과 유방내분비외과 전문의,삼성서울병원 암센터 유방암센터장','대한외과학회 용어위원회 위원',null,null,null,null,'820822-1******','0',38,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG16','MG169663','SWMG','교수','손희정','010-3572-9663','서울 동대문구 경동시장로 2,505-905,02572',to_timestamp('25/02/03 17:18:49.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'위염,십이지장궤양,위궤양','이화여자대학교 의과대학원 박사','성균관대학교 의과대학 내과 교수,삼성서울병원 소화기내과 전문의,삼성서울병원 건강의학센터 부센터장',null,'올해의 내과상',null,null,null,'721021-2******','0',40,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG17','MG171565','SWMG','교수','곽금연','010-7953-1565','서울 강동구 가래여울길 1,101-201,05200',to_timestamp('25/02/03 17:20:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'간암,간경화,급성간염,만성간염','서울대학교 의학과 박사','성균관대학교 의과대학 내과 교수,삼성서울병원 소화기내과 전문의,성균관대학교 의과대학 내과 부교수','대한간학회회원,대한내과학회회원',null,null,null,null,'750611-2******','0',41,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG18','MG181537','SWMG','교수','신동현','010-9894-1537','서울 금천구 가마산로 70,302-802,08500',to_timestamp('25/02/03 17:23:26.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'간암,B형간염,간경변,간이식','성균관 의과대학 의학 박사','성균관대학교 삼성서울병원 소화기내과 교수,성균관대학교 삼성서울병원 소화기내과 부교수','대한간암학회 정회원,대한간학회 정회원',null,null,null,null,'700123-1******','0',44,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG19','MG194651','SWMG','교수','김태세','010-5467-4651','서울 서초구 강남대로 48-8,303-403,06779',to_timestamp('25/02/03 17:37:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'위암,위용종,위장관질환','성균관 의과대학원 석사','삼성서울병원 소화기내과 임상조교수,삼성서울병원 소화기내과 임상강사','대한소화기내시경학회 정회원,대한위암학회 정회원',null,null,null,null,'830413-1******','0',43,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('OBGY20','OBGY205665','SWOBGY','교수','노정훈','010-8854-5665','서울 서초구 사임당로 64,505-405,06640',to_timestamp('25/02/03 17:39:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'산과','고려대학원 의학과 박사','성균관대학교 의과대학 산부인과학교실 교수,삼성서울병원 산부인과 전문의,삼성서울병원 모아집중치료센터 센터장','Society for Gynecologic Investigation',null,null,null,null,'701112-1******','0',30,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('OBGY21','OBGY216741','SWOBGY','교수','최철훈','010-7800-6741','서울 강남구 가로수길 23,407-507,06034',to_timestamp('25/02/03 17:41:25.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'난소암,자궁경부암,자궁내막암','고려대학원 의학과 박사','삼성서울병원 산부인과 교수,삼성서울병원 산부인과 부교수,삼성서울병원 산부인과 조교수',null,'최우수구연상, 대한산부인과학회,최우수포스터상, 일본산부인과학회',null,null,null,'800719-1******','0',31,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('OBGY22','OBGY225489','SWOBGY','교수','성지희','010-9434-5489','서울 강북구 노해로 19-1,707-807,01080',to_timestamp('25/02/03 17:43:45.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'고위험임신,정밀초음파검사,입체초음파검사,양수검사','성균관대학교 의과대학 석사','삼성서울병원 산부인과 진료부교수,삼성서울병원 산부인과 임상조교수,강북삼성병원 산부인과 임상조교수','대한모체태아의학회 정회원,대한산부인과학회 정회원','모체태아의학회 우수연제상,주산의학회 우수구연상',null,null,null,'750331-2******','0',32,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('ER23','ER237663','SWER','교수','김태림','010-9723-7663','경기 성남시 분당구 내정로 58,909-709,13607',to_timestamp('25/02/03 17:46:21.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'응급의학','울산대학교 의학대학원 박사','삼성서울병원 응급의학과 진료조교수,삼성서울병원 응급의학과 임상조교수,삼성서울병원 응급의학과 임상강사','응급의료정보연구회 정회원,대한소아응급의학회 정회원',null,null,null,null,'791216-2******','0',21,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('ER24','ER246619','SWER','과장','이건탁','010-1574-6619','서울 강남구 가로수길 26,505-305,06036',to_timestamp('25/02/03 17:47:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'응급의학,심장정지,중환자의학','강원대학교 석사','삼성서울병원 응급의학과 진료조교수,삼성서울병원 응급의학과 임상조교수',null,null,null,null,null,'780802-1******','0',20,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('ER25','ER256627','SWER','레지','이현정','010-1732-6627','서울 강동구 가래여울길 20-1,606-706,05200',to_timestamp('25/02/03 17:49:35.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'이화여자대학교 의학과','아주대학교병원 인턴',null,null,null,null,null,'891015-2******','0',18,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('ER26','ER267451','SWER','인턴','허세진','010-9035-7451','경기 성남시 분당구 서판교로 32,501-201,13479',to_timestamp('25/02/03 17:50:41.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'부산대학교 의학전문대학원 석사',null,null,null,null,null,null,'870529-2******','0',17,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PC27','PC277167','SWPC','교수','김도관','010-8984-7167','서울 서초구 강남대로 160-6,903-703,06744',to_timestamp('25/02/03 17:53:36.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'우울증,기분장애,치매,노인정신질환','서울대학교 대학원 의학과 (박사)','삼성서울병원 정신건강의학과 전문의,대한노인정신의학회 이사장,한국노인과학학술단체연합회 대의원, 이사','대한민국의학한림원 정회원,대한노인정신의학회 이사장','대한신경정신의학회 환인학술상 수상,대한신경정신의학회 고려의학상 수상,대한신경정신의학회 릴리학술상 수상',null,null,null,'680430-1******','0',10,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PC28','PC288511','SWPC','교수','정유숙','010-2734-8511','서울 동대문구 서울시립대로12길 6,706-806,02551',to_timestamp('25/02/03 17:55:21.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'청소년상담,우울증,발달장애','아주대학교 대학원 의학과 (박사)','삼성서울병원 정신건강의학과장,삼성사회정신건강연구소 부소장','한국재활승마학회 이사,대한소아청소년정신의학회 정회원',null,null,null,null,'691014-2******','0',16,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PC29','PC299862','SWPC','레지','안지현','010-3495-9862','경기 성남시 분당구 고기로 25,102-502,13547',to_timestamp('25/02/03 17:56:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'성균관대학교 의학전문대학원','삼성서울병원 인턴','대한의사협회 정회원',null,null,null,null,'850127-2******','0',3,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PC30','PC308455','SWPC','인턴','정진영','010-1288-8455','서울 구로구 가마산로 77,701-601,08327',to_timestamp('25/02/03 17:57:40.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'성균관대학교 의과대학 의학과','삼성서울병원 정신건강의학과 임상강사',null,null,null,null,null,'880317-1******','0',15,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN31','AN318943','SWAN','교수','양미경','010-1956-8943','서울 서초구 강남대로 198,303-503,06743',to_timestamp('25/02/03 17:59:34.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'폐식도마취','서울대학교 의과대학원 의학박사','성균관대학교 의과대학 마취통증의학과 교수,성균관대학교 의과대학 마취통증의학과 부교수',null,null,null,null,null,'661215-2******','0',23,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN32','AN326716','SWAN','인턴','김정수','010-9944-6716','서울 동대문구 고미술로 71,608-908,02604',to_timestamp('25/02/03 18:01:02.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'심장마취,부인과마취,소아심장마취','단국대학교 의과대학원 의학과(박사)','성균관대학교 의과대학 마취통증의학과 교수,성균관대학교 의과대학 마취통증의학과 부교수',null,null,null,null,null,'680614-1******','0',24,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN33','AN335153','SWAN','과장','최수주','010-1552-5153','서울 강동구 천호대로213길 14,202-302,05291',to_timestamp('25/02/03 18:02:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'정형외과마취','충북대학교 대학원 의학과 (박사)','삼성서울병원 마취통증의학과 임상조교수','한국보훈병원 마취통증의학과 전문의',null,null,null,null,'700410-2******','0',25,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PD34','PD348453','SWPD','교수','성기웅','010-8825-8453','서울 강남구 테헤란로 107,303-403,06134',to_timestamp('25/02/03 18:04:41.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'신경모세포종,뇌종양,고위험고형암,조혈모세포이식','서울대학교 대학원 의학과 (박사)','성균관의대 삼성서울병원 교수,삼성서울병원 소아청소년과 과장','대한조혈모세포이식학회 회장,대한소아혈액종양학회 이사장','대한조혈모세포이식학회 학술상',null,null,null,'690227-1******','0',33,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PD35','PD357807','SWPD','교수','김예진','010-1895-7807','서울 송파구 가락로 19,303-903,05692',to_timestamp('25/02/03 18:08:09.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'감염질환,면역결핍증,면역질환,불명열','이화여자대학교 의과 대학원 (박사)','성균관대학교 삼성서울병원 소아청소년과 교수,성균관대학교 삼성서울병원 소아청소년과 부교수','대한류마티스학회 회원,유럽 소아류마티스학회 회원','보건복지부 장관 표창 (감염병관리 유공자 포상),대한소아감염학회-사노피파스퇴르 학술상 수상,대한소아감염학회 녹십자 학술상',null,null,null,'700203-2******','0',34,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PD36','PD365478','SWPD','과장','유건희','010-8345-5478','서울 마포구 가양대로 1,203-603,03900',to_timestamp('25/02/03 18:09:59.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'빈혈,소아암,백혈병','서울대학교 대학원 의학과 (박사)','미국 인디애나 의과대학 장기연수,삼성서울병원 소아과 임상전임강사,삼성서울병원 소아과 전임의 (혈액종양)','대한소아과학회 회원,대한소아뇌종양학회 회원','대한조혈모세포이식학회 선도연구자상',null,null,null,'720616-1******','0',35,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PD37','PD370913','SWPD','레지','이나현','010-3387-0913','서울 강동구 가래여울길 40,505-405,05200',to_timestamp('25/02/03 18:11:33.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'신생아','계명대학교 (석사)','계명대동산병원 인턴',null,null,null,null,null,'870421-2******','0',36,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('RD38','RD381432','SWRD','교수','김지혜','010-2366-1432','서울 서초구 강남대로 224,504-104,06736',to_timestamp('25/02/03 18:14:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'소아영상의학','서울대학교 대학원 의학 박사','성균관대학 삼성서울병원 교수,성균관대학 삼성서울병원 부교수','Asian and Oceanic Society for Pediatric Radiology,대한 방사선의학회',null,null,null,null,'710609-2******','0',26,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('RD39','RD393641','SWRD','과장','주성욱','010-8652-3641','서울 강남구 가로수길 22,807-709,06036',to_timestamp('25/02/03 18:15:58.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'인터벤션영상의학','충북대학교 대학원 의학 박사','미국 UCSF 진단방사선과 연수,진단방사선과 전문의 자격 취득',null,null,null,null,null,'800303-1******','0',27,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('RD40','RD406562','SWRD','레지','윤정환','010-3478-6562','경기 성남시 분당구 서판교로32번길 7,803-503,13479',to_timestamp('25/02/03 18:17:18.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'응급영상의학','순천향대학교 의학 학사','순천향대학교병원 인턴',null,null,null,null,null,'871203-1******','0',28,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('RD41','RD416615','SWRD','과장','최지수','010-9977-6615','서울 중구 남대문로 52-1,102-401,04535',to_timestamp('25/02/03 18:19:20.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'유방영상의학,갑상선','연세대학교 대학원 의학 박사','삼성서울병원 영상의학과 진료조교수,삼성서울병원 영상의학과 임상전임강사','대한영상의학회 회원,대한의사협회 회원',null,null,null,null,'720930-2******','0',29,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS42','GS421512','SWGS','과장','허진석','010-7924-1512','경기 성남시 분당구 서판교로 154,406-608,13474',to_timestamp('25/02/03 18:24:06.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'췌장담도암,담낭암,담석증,로봇수술','인하대학교 대학원 의학박사','삼성서울병원 외과 전문의,삼성서울병원 인사기획팀장','진료지침수립위원회 위원,대한내시경복강경외과학회 학술위원',null,null,null,null,'731123-1******','0',39,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('EY43','EY434012','SWEY','교수','김범진','010-9302-4012','서울 송파구 가락로 28,105-905,05694',to_timestamp('25/02/03 20:19:17.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'망막질환,당뇨망막병증,포도막염','서울대학교 대학원 의학과 (박사)','삼성서울병원 안과 과장,성균관대학교 의과대학 안과 교수,삼성서울병원 안과 전문의','한국포도막학회 회장','보건복지부장관 표창','EY43-2',null,null,'720122-1******','0',4,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PA44','PA448926','SWPA','교수','장현진','010-2364-8926','서울 강동구 가래여울길 14,33-102,05200',to_timestamp('25/02/03 20:25:37.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'신장병리,비뇨병리의학,이식병리','서울대학교 대학원 의학과 박사','성균관대학교 의과대학 병리학교실 교수,삼성서울병원 병리과 전문의,성균관대학교 의과대학 병리학교실 부교수','대한병리학회','보령암학술상 수상','PA44-4',null,null,'710718-1******','0',42,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DE45','DE453572','SWDE','교수','김민석','010-7682-3572','서울 관악구 관악로 1,506-905,08826',to_timestamp('25/02/03 20:32:46.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'만성치주염,임플란트,치아우식증,신경치료','서울대학교 대학원 치의박사','성균관대학교의과대학 치과 교수,삼성서울병원 치과 의국장,성균관대학교의과대학 치과 부교수','대한치주과학회 연구이사,대한치주과학회 대외협력 이사',null,'DE45-1',null,null,'731020-1******','0',22,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DR46','DR465741','SWDR','교수','최정윤','010-6965-5741','서울 구로구 가마산로 134,203-560,08317',to_timestamp('25/02/03 20:59:19.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'피부종양,피부발진,백반증,피부암','서울대학교 대학원 의학과 (박사)','성균관의대 삼성서울병원 피부과 교수,삼성서울병원 피부과 과장,성균관의대 삼성서울병원 피부과 부교수','대한피부과학회 교육이사,백반증학회 학술이사',null,'DR46-2',null,null,'740511-1******','0',19,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN47','AN479812','SWAN','교수','박민준','010-2882-9812','서울 금천구 가마산로 70,209-292,08500',to_timestamp('25/02/04 10:12:26.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'심장마취,부인과마취,소아심장마취','서울대학교 대학원 의학과 (박사)','성균관대학교 의과대학 마취통증의학과 교수,성균관대학교 의과대학 마취통증의학과 부교수',null,null,'AN47-1',null,null,'740222-1******','0',72,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PA48','PA481256','SWPA','과장','김경미','010-4572-1256','경기 성남시 분당구 고기로 260,501-294,13547',to_timestamp('25/02/04 10:22:07.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'위장관병리,소화기병리,분자병리','가톨릭대학교 대학원 의학과 박사','삼성서울병원 병리과 전문의,서던캘리포니아 대학교 소화기병리 연구원','Gastric Cancer','보령암학술상 수상',null,null,null,'720112-2******','0',71,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PA49','PA495212','SWPA','교수','오영륜','010-1239-5212','서울 중구 난계로 129-5,902-5872,04579',to_timestamp('25/02/04 10:23:54.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'내분비병리,세포병','서울대학교 대학원 의학과 박사','성균관대학교 의과대학 병리학교실 교수,삼성서울병원 병리과 전문의,성균관대학교 의과대학 병리학교실 부교수',null,null,null,null,null,'730811-2******','0',70,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PA50','PA507261','SWPA','과장','장기택','010-0624-7261','서울 동작구 동작대로 335-1,602-309,06905',to_timestamp('25/02/04 10:25:45.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'피부병리,췌담관계병리','서울대학교 대학원 의학과 박사','삼성서울병원 바이오뱅크장,삼성서울병원 병리과 과장',null,null,null,null,null,'741011-1******','0',69,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('EY51','EY511489','SWEY','교수','오세열','010-8336-1489','서울 용산구 녹사평대로 73,792-481,04384',to_timestamp('25/02/04 10:27:40.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'사시,안구진탕증','서울대학교 대학원 의학과 (박사)','삼성서울병원 진료부원장,보건복지부 장애판정위원회 위원,성균관 대학교 의과대학 안과 교수','KJO 편집 위원회,대한안과학회 보험이사','보건복지부장관 표창',null,null,null,'711231-1******','0',68,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('EY52','EY525892','SWEY','교수','우경인','010-8342-5892','경기 성남시 분당구 금곡로 298,892-2486,13563',to_timestamp('25/02/04 10:32:50.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'안성형,안와,눈주변부종양,눈꺼풀','서울대학교 대학원 의학박사','삼성서울병원 안과 교수 및 성균관대학교 의과대학 안과학 교수,삼성서울병원 안과 교수,성균관대학교 의과대학 안과학 부교수','대한안성형학회 이사 역임,Korean Journal of Ophthalmology 편집위원',null,null,null,null,'730304-2******','0',73,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('EY53','EY538764','SWEY','과장','박철용','010-9763-8764','서울 관악구 과천대로 851,923-581,08810',to_timestamp('25/02/04 10:34:26.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'각막이식,각막질환,백내장,라섹','성균관대학교 대학원 안과학 박사','미) 존스홉킨스병원 전임의,삼성서울병원 전임의',null,null,null,null,null,'770531-1******','0',66,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('EY54','EY540096','SWEY','과장','이은정','010-6789-0096','경기 성남시 분당구 대왕판교로 364,598-591,13543',to_timestamp('25/02/04 10:36:17.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'녹내장,백내장','성균관 의과대학원 의학과 (박사)','삼성서울병원 안과 전임의(녹내장),미국 뉴욕 Manhatten''s Eye, Ear & Throat Hospital 연수','한국녹내장학회 정회원,대한안과학회 정회원','한국녹내장학회 신진연구자상 수상',null,null,null,'820320-2******','0',65,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DE55','DE552645','SWDE','교수','유현미','010-8794-2645','경기 성남시 분당구 고기로 256-20,471-284,13547',to_timestamp('25/02/04 10:38:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'치아우식증,예방및수복치료,치아미백','서울대학교 대학원 치의학과 (박사)','성균관대학교 의과대학 의학과 치과학교실 교수,성균관대학교 의과대학 의학과 치과학교실 부교수',null,null,null,null,null,'740803-2******','0',64,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DE56','DE565621','SWDE','과장','계승범','010-2678-5621','서울 용산구 녹사평대로 132-1,392-593,04390',to_timestamp('25/02/04 10:42:04.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'만성치주염,임플란트','서울대학교 대학원 치의학과 (박사)','UCSF 치과대학 치주과 방문교수 (샌프란시스코, 미국),삼성서울병원 치과진료부 치주과 전문의','대한구강악안면임플란트학회 이사',null,null,null,null,'810914-1******','0',63,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DE57','DE579078','SWDE','과장','최혜원','010-6782-9078','경기 성남시 분당구 서판교로 154,49-122,13474',to_timestamp('25/02/04 10:43:45.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'수술교정,턱교정,치열교정','서울대학교 치의학대학원 박사','UCLA 치과대학 교정과 방문교수,홍익병원 치과교정과 과장','미국교정학회 정회원,대한구순구개열학회 기획이사',null,null,null,null,'840522-2******','0',62,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('CP58','CP587256','SWCP','과장','강은숙','010-1356-7256','서울 중구 난계로 131,997-201,04579',to_timestamp('25/02/04 10:45:49.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'이식면역,진단면역,세포치료','울산대학교의과대학 의학박사','미국스탠포드대학병원 Depart of Pathology / Stanford Blood Center 연구교수,미국 하버드의과대학 부속병원 Transplantation Biology Research Center 연구전임의','The Transplantation Society 정회원,대한 수혈학회 정회원',null,null,null,null,'830211-2******','0',61,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('CP59','CP597936','SWCP','과장','이수연','010-1221-7936','서울 광진구 강변북로 2260,2381-131,05097',to_timestamp('25/02/04 10:47:16.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'약물유전학,특수화학,생화학유전학','울산대학교 대학원 의학과 (박사)','미국 UNC Institute for Pharmacogenomics and Individualized Therapy 연수,삼성서울병원 진단검사의학과 임상전임강사',null,null,null,null,null,'821130-2******','0',60,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('CP60','CP607636','SWCP','레지','김영곤','010-2525-7636','서울 강북구 노해로 1,583-598,01081',to_timestamp('25/02/04 10:49:20.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'진단분자유전학,분자유전','경북대학교 의학전문대학원 석사','고려대학교안암병원 진단검사의학과 전공의,서울아산병원 인턴',null,'대한진단유전학회 학술대회 우수구연상',null,null,null,'870423-1******','0',59,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DR61','DR611734','SWDR','교수','이종희','010-3566-1734','서울 용산구 녹사평대로 지하 195,3495-5981,04353',to_timestamp('25/02/04 10:52:13.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'성인아토피,흉터의예방과치료','서울대학교 의학대학원 피부과박사','삼성서울병원 피부과 임상교수,삼성서울병원 피부과 과장','대한색소연구회 학술이사,대한코스메틱학회 학술이사',null,null,null,null,'701028-2******','0',58,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DR62','DR622356','SWDR','과장','박지혜','010-8787-2356','경기 성남시 분당구 금곡로 298,5981-391,13563',to_timestamp('25/02/04 10:53:32.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'피부종양,피부발진','성균관대학교 의과대학 박사','삼성서울병원 피부과 임상전임강사,삼성서울병원 피부과 임상강사',null,null,null,null,null,'840602-2******','0',57,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('DR63','DR631356','SWDR','과장','이동윤','010-7865-1356','경기 과천시 가일로 14-15,5319-1023,13840',to_timestamp('25/02/04 10:55:25.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'탈모,두피질환','서울대학교 대학원 의학과 (박사)','삼성서울병원 피부과 전임의,서울대학병원 피부과 전임의','모발학회 이사',null,null,null,null,'860101-1******','0',56,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS64','GS646734','SWGS','레지','임희정','010-4612-6734','서울 노원구 공릉로 95,701-491,01849',to_timestamp('25/02/04 11:19:54.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'충남대학교 의학전문 대학원','경찰병원 인턴',null,null,null,null,null,'890410-2******','0',45,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS65','GS655890','SWGS','레지','김원태','010-2785-5890','서울 강남구 개포로 지하 522,193-591,06330',to_timestamp('25/02/04 11:20:48.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'성균관대학교 의학전문대학원','국립 경찰병원 인턴',null,null,null,null,null,'890809-1******','0',46,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('GS66','GS664782','SWGS','과장','오성은','010-4253-4782','경기 성남시 분당구 서판교로 179,987-298,13471',to_timestamp('25/02/04 11:22:46.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'위암,복강경수술,로봇수술','성균관대학교 대학원 외과학 박사','삼성서울병원 위장관외과 임상강사,삼성서울병원 외과 전공의','대한외과대사영양학회 정회원,대한위암학회 평생회원',null,null,null,null,'790612-2******','0',47,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG67','MG673467','SWMG','과장','전준석','010-6845-3467','서울 강남구 개포로 634,7602-4915,06338',to_timestamp('25/02/04 11:25:21.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'만성신질환,급성신손상,다낭성신장','성균관대학교 대학원 의학과 박사','삼성서울병원 신장내과 임상강사,꾸러기 365의원 부원장',null,null,null,null,null,'820223-1******','0',48,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG68','MG688856','SWMG','과장','장혜련','010-1235-8856','경기 성남시 분당구 대왕판교로 388,1934-7924,13543',to_timestamp('25/02/04 11:26:58.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'신장이식,사구체신질환,혈액투석','서울대학교 대학원 의학박사','삼성서울병원 신장내과 전문의,Stanford University School of Medicine 연수,미국 Johns Hopkins 의대 병원 연구 전임의',null,null,null,null,null,'800330-2******','0',49,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PA69','PA693123','SWPA','과장','이윤경','010-4261-3123','서울 용산구 녹사평대로 90,10-289,04393',to_timestamp('25/02/04 11:30:43.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'세포병리','서울대학교 의과대학원 박사','서울대학교병원 병리과 전임의,조선대학교병원 레지던트',null,null,null,null,null,'790612-2******','0',50,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('PA70','PA708643','SWPA','과장','김현수','010-1236-8643','서울 금천구 가산디지털1로 1,4891-1934,08594',to_timestamp('25/02/04 11:32:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'유방병리,산부인과병리','경희대학교 대학원 의학과 박사','삼성서울병원 병리과 임상강사,공군 항공우주의료원 군의관',null,null,null,null,null,'860122-1******','0',51,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN71','AN716766','SWAN','레지','김덕경','010-6334-6766','경기 의정부시 가금로 57-15,281-294,11684',to_timestamp('25/02/04 11:35:57.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'외과마취','강원대학교 대학원 의학박사','서울대병원 인턴','대한중환자 의학회 학술위원',null,null,null,null,'870905-1******','0',52,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG72','MG722323','SWAN','과장','이종환','010-8782-2323','서울 용산구 남산공원길 123,67-387,04340',to_timestamp('25/02/04 11:37:28.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'심혈관마취','서울대학교 의학과(박사)','서울대학교병원 마취통증의학과 심폐 혈관 마취 전임의,Visiting Scholar of University of California,Los Angeles','American Society of Anesthesiologists 회원',null,null,null,null,'840423-1******','0',53,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('AN73','AN732366','SWAN','인턴','강령아','010-8834-2366','경기 고양시 덕양구 수원문산고속도로 51,293-291,10481',to_timestamp('25/02/04 11:40:10.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'강원대학교 의과대학 (학사)',null,null,null,null,null,null,'900812-2******','0',54,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('EY74','EY749977','SWEY','레지','임동희','010-2365-9977','서울 마포구 가양대로 203,293-281,03918',to_timestamp('25/02/04 11:42:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'라섹,근시','성균관 대학원 의학과 석사','미국 UCLA Jules Stein Eye Institute 연수,삼성서울병원 인턴',null,'젊은 의학자를 위한 학술연구상 수상',null,null,null,'890727-2******','0',55,null);
Insert into PROJECT_HOSPITAL.HP_MEMBER (DR_ID,DR_PW,DEPT_ID,DR_POSITION,DR_NAME,DR_PHONE_NUM,DR_ADDRESS,CREATED_AT,UPDATED_AT,DR_FIELD,DR_EDUCATION,DR_CAREER,DR_ACADEMIC,DR_AWARDS,FILEONE,FILETWO,FILETHREE,DR_PERSON_NUM,QUIT,RANK,HASH_PW) values ('MG75','MG758865','SWEY','교수','이은정','010-3245-8865','경기 양평군 용문면 은고갯길 19-2,102-101,12513',to_timestamp('25/02/04 11:44:20.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 20:58:52.000000000','RR/MM/DD HH24:MI:SSXFF'),'백내장,녹내장','성균관 의과대학원  (박사)','삼성서울병원 안과 임상조교수 (녹내장),삼성서울병원 안과 전임의(녹내장)','대한안과학회 정회원','한국녹내장학회 신진연구자상 수상',null,null,null,'730701-2******','0',67,null);
REM INSERTING into PROJECT_HOSPITAL.OPENING_TIME
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4143','GS66','오전','정상진료',to_timestamp('25/02/15 10:43:06.654000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4144','GS66','오후','정상진료',to_timestamp('25/02/15 10:43:06.655000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4145','GS66','오전','정상진료',to_timestamp('25/02/15 10:43:06.667000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4146','GS66','오후','정상진료',to_timestamp('25/02/15 10:43:06.669000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4147','GS66','오전','정상진료',to_timestamp('25/02/15 10:43:06.669000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4148','GS66','오후','정상진료',to_timestamp('25/02/15 10:43:06.671000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4149','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.439000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-01');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4150','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.451000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-01');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4151','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.453000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4152','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.456000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4153','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.460000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-03');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4154','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.463000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-03');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4155','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.479000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-04');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4156','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.481000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-04');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4157','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.483000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-05');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4158','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.486000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-05');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4159','GS66','오전','휴진-진료없음',to_timestamp('25/02/15 12:26:09.487000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-06');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4160','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.490000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-06');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4161','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.493000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-07');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4162','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.495000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-07');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4163','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.498000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-08');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4164','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.502000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-08');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4165','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.504000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4166','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.506000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4167','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.508000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-10');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4168','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.509000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-10');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4169','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.511000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-11');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4170','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.513000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-11');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4171','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.515000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-12');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4172','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.517000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-12');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4173','GS66','오전','휴진-진료없음',to_timestamp('25/02/15 12:26:09.519000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4174','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.521000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4175','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.523000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4176','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.524000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4177','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.526000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4178','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.528000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4179','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.529000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4180','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.531000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4181','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.533000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-17');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4182','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.535000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-17');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4183','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.537000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-18');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4184','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.539000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-18');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4185','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.541000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-19');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4186','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.543000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-19');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4187','GS66','오전','휴진-진료없음',to_timestamp('25/02/15 12:26:09.545000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-20');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4188','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.547000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-20');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4189','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.549000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-21');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4190','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.550000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-21');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4191','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.552000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-22');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4192','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.554000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-22');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4193','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.556000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4194','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.558000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4195','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.559000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-24');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4196','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.560000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-24');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4197','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.563000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-25');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4198','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.564000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-25');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4199','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.566000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-26');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4200','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.568000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-26');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4201','GS66','오전','휴진-진료없음',to_timestamp('25/02/15 12:26:09.569000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-27');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4202','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.571000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-27');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4203','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.572000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-28');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4204','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.574000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-28');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4205','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.575000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-29');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4206','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.577000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-29');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4207','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.578000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-30');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4208','GS66','오후','휴진-진료없음',to_timestamp('25/02/15 12:26:09.580000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-30');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4209','GS66','오전','정상진료',to_timestamp('25/02/15 12:26:09.581000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-31');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4210','GS66','오후','정상진료',to_timestamp('25/02/15 12:26:09.583000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-03-31');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4211','GS66','오전','정상진료',to_timestamp('25/02/15 16:09:44.333000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4212','GS66','오후','정상진료',to_timestamp('25/02/15 16:09:44.339000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4213','GS66','오전','정상진료',to_timestamp('25/02/15 16:09:44.340000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4214','GS66','오후','정상진료',to_timestamp('25/02/15 16:09:44.342000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4215','GS66','오전','정상진료',to_timestamp('25/02/15 16:09:44.343000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4216','GS66','오후','정상진료',to_timestamp('25/02/15 16:09:44.344000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4217','MG1','오전','정상진료',to_timestamp('25/02/15 16:10:38.989000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4218','MG1','오후','정상진료',to_timestamp('25/02/15 16:10:38.990000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4219','MG1','오전','정상진료',to_timestamp('25/02/15 16:10:38.993000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4220','MG1','오후','정상진료',to_timestamp('25/02/15 16:10:38.995000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4221','MG1','오전','정상진료',to_timestamp('25/02/15 16:10:39.011000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4222','MG1','오후','정상진료',to_timestamp('25/02/15 16:10:39.012000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4223','RD5','오전','정상진료',to_timestamp('25/02/15 16:11:19.270000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4224','RD5','오후','정상진료',to_timestamp('25/02/15 16:11:19.272000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4241','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:12:17.570000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4242','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:12:17.578000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4243','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:12:17.651000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-03');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4244','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:12:17.655000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-03');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4245','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:12:17.657000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4246','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:12:17.659000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4247','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:12:17.661000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-10');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4248','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:12:17.664000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-10');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4249','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:12:17.667000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4250','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:12:17.669000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4251','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:12:17.670000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-17');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4252','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:12:17.674000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-17');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4253','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:12:17.677000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4254','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:12:17.680000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4255','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:12:17.683000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-24');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4256','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:12:17.686000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-24');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4257','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:23:44.626000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-04');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4258','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:23:44.658000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-04');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4259','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:23:44.662000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-11');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4260','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:23:44.664000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-11');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4261','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:23:44.665000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-18');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4262','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:23:44.667000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-18');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4263','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:23:44.670000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-25');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4264','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:23:44.672000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-25');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4265','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.415000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-01');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4266','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.440000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-01');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4267','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.443000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4141','GS66','오전','정상진료',to_timestamp('25/02/15 10:43:06.647000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4142','GS66','오후','정상진료',to_timestamp('25/02/15 10:43:06.652000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-02-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4268','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.445000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-02');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4269','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.448000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-03');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4270','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.449000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-03');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4271','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.451000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-04');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4272','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.453000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-04');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4273','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.455000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-05');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4274','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.456000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-05');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4275','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.458000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-06');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4276','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.462000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-06');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4277','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.464000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-07');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4278','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.466000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-07');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4279','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.467000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-08');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4280','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.469000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-08');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4281','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.471000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4282','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.473000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-09');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4283','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.475000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-10');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4284','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.479000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-10');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4285','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.481000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-11');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4286','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.483000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-11');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4287','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.484000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-12');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4288','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.485000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-12');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4289','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.488000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4290','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.490000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-13');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4291','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.491000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4292','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.493000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-14');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4293','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.494000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4294','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.496000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-15');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4295','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.497000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4296','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.498000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-16');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4297','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.500000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-17');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4298','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.502000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-17');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4299','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.503000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-18');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4300','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.505000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-18');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4301','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.507000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-19');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4302','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.508000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-19');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4303','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.510000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-20');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4304','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.512000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-20');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4305','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.514000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-21');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4306','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.516000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-21');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4307','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.519000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-22');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4308','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.545000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-22');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4309','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.549000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4310','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.551000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-23');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4311','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.552000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-24');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4312','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.554000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-24');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4313','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.556000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-25');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4314','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.557000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-25');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4315','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.559000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-26');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4316','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.561000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-26');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4317','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.563000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-27');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4318','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.564000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-27');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4319','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.565000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-28');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4320','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.567000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-28');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4321','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.569000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-29');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4322','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.570000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-29');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4323','OBGY13','오전','휴진-진료없음',to_timestamp('25/02/20 16:24:59.571000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-30');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4324','OBGY13','오후','정상진료',to_timestamp('25/02/20 16:24:59.572000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-30');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4325','OBGY13','오전','정상진료',to_timestamp('25/02/20 16:24:59.573000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-31');
Insert into PROJECT_HOSPITAL.OPENING_TIME (OT_ID,DR_ID,TIMETYPE,OT_STATE,CREATED_AT,UPDATED_AT,YEAR_DATE) values ('4326','OBGY13','오후','휴진-진료없음',to_timestamp('25/02/20 16:24:59.574000000','RR/MM/DD HH24:MI:SSXFF'),null,'2025-01-31');
REM INSERTING into PROJECT_HOSPITAL.QNA_BOARD
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('57','241229009','김효진과장님 진료스케줄','김효진과장님 진료스케줄이 어떻게되나요?','답변대기',to_timestamp('25/01/23 18:03:44.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/10 14:10:25.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/23 18:03:44.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('58','250205001','검사치료','검사치료 받기 위해 예약을 했는데 연락이 안오네요 확인 해주세요','전화연락으로 위 문의사항을 해결하였습니다',to_timestamp('25/02/05 16:25:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/05 16:16:07.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/05 16:25:55.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('24','1','주차장 요금문의','주차장 요금 1시간당 어떻게 되나요?','주차장 요금은 30분에 2000원 입니다 1시간은 4000원 입니다',to_timestamp('25/02/05 16:11:28.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/10 17:01:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/05 16:11:28.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('59','1','셔틀버스','지하철역까지의 셔틀버스가 운행되는 것이 있나요?','답변대기',null,to_timestamp('25/02/05 16:17:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('40','1','ㄴ','ㄴ','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 11:06:49.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','98ea137d-1af0-4448-b5d7-95a5d42bb643','ab23cf50-5bd7-48b4-b3c6-c8027ed0b873','93f48f70-1281-4c78-814a-74ef902af35c');
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('41','1','ㄴ','ㄴ','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 11:07:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','7c083776-4c6f-44ab-835d-621ff02c69a7','252eabe5-6a33-42d0-9af2-041bd3fc9cdd','49f2f843-8559-4f76-82a3-e6bfe9246969');
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('43','241227001','ㅇ','ㅇ','답변대기',to_timestamp('25/01/14 16:45:57.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 16:07:47.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 16:45:57.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','d09874f0-8d6d-4296-b5ed-04412ae7823b','f7fe0d16-928a-4896-a58c-fcbc7f80ec0d',null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('60','2','중앙계단 광고스탠드','중앙계단에 광고 스탠드(?) 지나다니기 너무 불편해요 조치해주세요','답변대기',null,to_timestamp('25/02/05 16:21:27.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('28','1','ONEfileTEST','ONEfileTEST','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/30 19:08:32.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','7fdc2f0d-50e6-4fc7-8bc3-13ac676cb88d',null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('29','1','ㅁㄴㅇ','ㅁㄴㅇ','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/30 20:59:58.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('37','1','TWOfile','TWOfile','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 10:17:02.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','c1bf19e5-c20f-4f3a-a478-21f66c48705d','84952f43-89dc-4403-afc0-e8ddf265fb91',null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('35','1','241231','241231','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 10:12:17.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment',null,null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('32','1','SHITSHIT','SHITSHIT','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/30 21:06:43.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','93c3ad90-ad8a-4427-a4aa-e0931a34bc3e','a38871fc-ac42-40bd-a60f-82d6cc44e0eb',null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('33','1','WOOOOOWW','WOOOOOWW','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/30 21:07:13.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','243ff843-6b67-4ede-a187-e6bdb201bb02','ad69bc52-3e76-4ec3-a898-3ae2d2e79a56','28c6e67c-0bad-4df7-8208-efc9b849aecc');
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('36','1','ONEfile','ONEfile','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 10:15:12.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','9c60d614-480c-413e-9fea-49fbf9ac9216',null,null);
Insert into PROJECT_HOSPITAL.QNA_BOARD (QNA_ID,USER_NUM,TITLE,CONTENT,REPLY,REPLY_AT,CREATED_AT,UPDATED_AT,RELATION,QNA_TYPE,FILEONE,FILETWO,FILETHREE) values ('38','1','THREEfile','THREEfile','답변대기',to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('24/12/31 10:17:33.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/14 15:54:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'self','compliment','f80ec70a-dd71-4c85-8bc6-ff2376a24f52','223ed251-e107-44c3-8aaa-d10b6f426f61','51a527d9-24dc-4992-999e-dd658cb9d34e');
REM INSERTING into PROJECT_HOSPITAL.RECORD
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('1','MG1','241227006','외래',to_timestamp('25/02/15 16:27:57.192000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'7,540','2025-01-06',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('2','MG1','241227006','외래',to_timestamp('25/02/15 16:27:57.204000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'6,300','2025-01-07',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('3','MG1','241227006','외래',to_timestamp('25/02/15 16:27:57.209000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'15,700','2025-01-10',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('4','GS66','241227006','외래',to_timestamp('25/02/15 16:27:57.213000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'254,500','2025-01-12','17');
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('5','MG1','241227006','외래',to_timestamp('25/02/15 16:27:57.216000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'32,430','2025-01-01',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('6','RD5','241227006','외래',to_timestamp('25/02/15 16:27:57.221000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'3,200','2025-01-14',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('7','MG1','241227006','응급',to_timestamp('25/02/15 16:27:57.226000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'86,700','2025-01-15',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('8','MG1','241227006','입원',to_timestamp('25/02/15 16:27:57.230000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/13 15:41:11.000000000','RR/MM/DD HH24:MI:SSXFF'),'1,345,000','2025-01-15 ~ 2025-01-20',null);
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('10','MG1','241227003','외래',to_timestamp('25/02/15 16:27:57.237000000','RR/MM/DD HH24:MI:SSXFF'),null,'32,400','2025-01-16','16');
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('11','MG1','241227003','외래',to_timestamp('25/02/15 16:27:57.241000000','RR/MM/DD HH24:MI:SSXFF'),null,'42,600','2025-02-05','41');
Insert into PROJECT_HOSPITAL.RECORD (RECORD_ID,DR_ID,USER_NUM,RECORD_TYPE,CREATED_AT,UPDATED_AT,COST,TREATMENT_PERIOD,RESERV_ID) values ('12','MG1','241227006','외래',to_timestamp('25/02/15 16:27:57.247000000','RR/MM/DD HH24:MI:SSXFF'),null,'5,600','2025-02-05','34');
REM INSERTING into PROJECT_HOSPITAL.REFERRAL
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('3','241227002','MG1','외과 환자 인계','2','GS2',null,to_timestamp('25/01/16 17:53:25.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 18:19:19.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('4','2','GS2','진단 요청','1','CP11',null,to_timestamp('25/01/16 18:18:13.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('5','250108027','GS2','테스트1','1','MG1',null,to_timestamp('25/01/17 09:54:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('6','1','MG1','환자 진료 의뢰','1','GS2',null,to_timestamp('25/01/17 09:55:06.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 18:17:13.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('7','241227002','AN4','수술인원 인계','3','GS2',null,to_timestamp('25/01/17 09:56:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/17 10:51:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('8','2','PC10','진료의뢰 테스트','4','GS2',null,to_timestamp('25/01/17 09:57:16.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/17 10:34:07.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('21','241227001','GS2','외과 환자 인계','1','PD7',null,to_timestamp('25/01/23 15:24:09.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('41','1','GS2','임신 환자 협력요청','3','OBGY20',null,to_timestamp('25/02/04 15:09:41.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 15:12:25.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('1','241227002','GS2','내과 환자 인계','1','MG1',null,to_timestamp('25/01/16 17:41:40.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null);
Insert into PROJECT_HOSPITAL.REFERRAL (REFER_ID,USER_NUM,S_DR_ID,REFER_CONTENT,RECEIVE_CHK,R_DR_ID,RESULT_CONTENT,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE) values ('2','241227002','GS2','PTSD 환자 인계','1','PC10',null,to_timestamp('25/01/16 17:45:47.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null);
REM INSERTING into PROJECT_HOSPITAL.RESERVATION
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('34','머리가 너무 아파요','241227006',to_timestamp('25/02/15 16:21:34.998000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/04 15:11:24.000000000','RR/MM/DD HH24:MI:SSXFF'),'4221','7');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('41','열이 많이 나고 기침도 많이 해요','241227006',to_timestamp('25/02/15 16:21:35.003000000','RR/MM/DD HH24:MI:SSXFF'),null,'4221','10');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('42','폐암 진단을 받았습니다','241227006',to_timestamp('25/02/15 16:21:35.009000000','RR/MM/DD HH24:MI:SSXFF'),null,'4221','15');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('43','CT결과 확인','241227006',to_timestamp('25/02/15 16:21:35.013000000','RR/MM/DD HH24:MI:SSXFF'),null,'4223','10');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('9','열이나고 속이 울렁거려요','241227003',to_timestamp('25/02/15 16:21:35.018000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/07 15:38:35.000000000','RR/MM/DD HH24:MI:SSXFF'),'4222','43');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('44','속이 너무 쓰리고 아파요 동네병원에서 큰 병원 가보래요','241227006',to_timestamp('25/02/15 16:21:35.023000000','RR/MM/DD HH24:MI:SSXFF'),null,'4216','37');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('16','무릎이 저려요','241227003',to_timestamp('25/02/15 16:21:35.030000000','RR/MM/DD HH24:MI:SSXFF'),null,'4222','35');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('17','팔이 부러진거 같아요','241227003',to_timestamp('25/02/15 16:21:35.037000000','RR/MM/DD HH24:MI:SSXFF'),null,'4222','27');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('45','배가 저릿저릿하게 아파요..','250121001',to_timestamp('25/02/15 16:21:35.043000000','RR/MM/DD HH24:MI:SSXFF'),null,'4215','8');
Insert into PROJECT_HOSPITAL.RESERVATION (RESERV_ID,RESERV_CONTENT,USER_NUM,CREATED_AT,UPDATED_AT,OT_ID,TIMETABLE_ID) values ('46','혈관CT촬영하려고합니다','250108027',to_timestamp('25/02/15 16:21:35.048000000','RR/MM/DD HH24:MI:SSXFF'),null,'4224','47');
REM INSERTING into PROJECT_HOSPITAL.TIMETABLE
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('1','09:00',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('2','09:10',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('3','09:20',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('4','09:30',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('5','09:40',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('6','09:50',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('7','10:00',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('8','10:10',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('9','10:20',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('10','10:30',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('11','10:40',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('12','10:50',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('13','11:00',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('14','11:10',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('15','11:20',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('16','11:30',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('17','11:40',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('18','11:50',to_timestamp('24/12/26 15:09:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오전');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('19','13:00',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('20','13:10',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('21','13:20',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('22','13:30',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('23','13:40',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('24','13:50',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('25','14:00',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('26','14:10',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('27','14:20',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('28','14:30',to_timestamp('24/12/26 15:11:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('29','14:40',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('30','14:50',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('31','15:00',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('32','15:10',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('33','15:20',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('34','15:30',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('35','15:40',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('36','15:50',to_timestamp('24/12/26 15:11:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('37','16:00',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('38','16:10',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('39','16:20',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('40','16:30',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('41','16:40',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('42','16:50',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('43','17:00',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('44','17:10',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('45','17:20',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('46','17:30',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('47','17:40',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
Insert into PROJECT_HOSPITAL.TIMETABLE (TIMETABLE_ID,TIME,CREATED_AT,UPDATED_AT,TIME_TYPE) values ('48','17:50',to_timestamp('24/12/26 15:12:18.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'오후');
REM INSERTING into PROJECT_HOSPITAL.USER_CLIENT
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('1','test','test','김민서','01012341234','2000/01/10',null,null,'christine110@naver.com',null,to_timestamp('24/12/26 11:53:55.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 18:58:27.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('2','test1','test1','김민수','01012341234','2000/01/10',null,null,null,null,to_timestamp('24/12/26 11:54:48.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 18:58:27.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241227007','14세미만','123456','ㅇㅇ','010-2345-6789','2017/05/05','M','서울특별시 서초구','test2@example.com','N',to_timestamp('24/12/27 17:34:02.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 15:17:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241229009','testuser34','password3','이영희','010-3456-7890','1992/02/02','F','부산광역시 해운대구','test3@example.com','Y',to_timestamp('24/12/29 02:51:24.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 15:17:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241227001','testuser2','password2','김철수','010-2345-6789','1985/05/05','M','서울특별시 서초구','test2@example.com','N',to_timestamp('24/12/27 12:52:38.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 15:17:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241227002','testuser3','password3','이영희','010-3456-7890','1992/02/02','F','부산광역시 해운대구','test3@example.com','Y',to_timestamp('24/12/27 12:52:41.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 15:17:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241227003','testuser_dynamic','password123','홍길동','010-2345-6789','1991/05/07','M','서울특별시 강남구','testuser_dynamic@example.com','Y',to_timestamp('24/12/27 12:54:28.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 15:17:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241227005','testuser_dynamic1','password123','홍길동','010-2345-6789','1991/05/07','M','서울특별시 강남구','testuser_dynamic@example.com','Y',to_timestamp('24/12/27 12:56:50.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/01/08 15:17:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('241227006','testuser_dynamic2','pw12','유연수','010-2345-6789','1991/05/07','M','서울특별시 강남구','testuser_dynamic@example.com','Y',to_timestamp('24/12/27 12:56:59.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 10:11:44.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('250108027','qwer123','qwer123','신정민','010-5123-1252','1997/05/08','M','서울 강남구 테헤란로 124 4층','test122@example.com','Y',to_timestamp('25/01/08 15:27:03.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 17:02:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,'0',null);
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('250121001','itwill123','pw12','김민지','010-7878-2343','2014/01/03','M','서울 강남구 테헤란로 124 4층 아이티윌','itwill123@naver.com','Y',to_timestamp('25/01/21 15:55:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('25/02/06 10:18:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,'엄마','010-5636-5351','itwill12@naver.com','0','@profile_default');
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('250204001','itwill1234','$2a$10$p7WB5pZMe0SCZyswArd7sORJhDOdVoRS5N0nZa7Mih9iICKkTT3C.','암호화','010-5351-5636','1998/02/03','M','서울 강남구 테헤란로 124 4층 아이티윌','itwill1234@naver.com','Y',to_timestamp('25/02/04 17:53:24.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,null,'0','@profile_default');
Insert into PROJECT_HOSPITAL.USER_CLIENT (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_PHONE_NUM,USER_BIRTH,USER_GENDER,USER_ADDRESS,USER_EMAIL,SEND_STATE,CREATED_AT,UPDATED_AT,FILEONE,FILETWO,FILETHREE,GUARDIAN_NAME,GUARDIAN_PHONE_NUM,GUARDIAN_EMAIL,QUIT,USER_IMG) values ('250205001','jungyun8825','$2a$10$jv0cIWqZtZ2fzAch4LK91OjQfkbyE/FgMVub6o46slsmWGbmQpY8S','최정윤','010-3474-8825','1997/05/08','M','경기 의왕시 모락로 89-15 101동 202호','jungyun8825@naver.com','Y',to_timestamp('25/02/05 12:30:13.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,null,null,null,null,null,'0','@profile_default');
REM INSERTING into PROJECT_HOSPITAL.VW_ALLBOARD_DATE
SET DEFINE OFF;
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/10 14:10:25.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/02/05 16:16:07.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/10 17:01:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/02/05 16:17:17.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 11:06:49.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 11:07:27.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 16:07:47.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/02/05 16:21:27.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/30 19:08:32.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/30 20:59:58.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 10:17:02.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 10:12:17.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/30 21:06:43.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/30 21:07:13.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 10:15:12.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('24/12/31 10:17:33.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/16 20:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/23 12:02:11.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 12:42:24.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 12:46:42.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 12:48:24.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 12:50:08.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:24:48.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:27:55.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:31:40.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:33:34.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:36:20.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:38:27.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:40:18.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 20:42:40.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 14:55:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/06 15:04:05.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 16:41:33.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 16:49:36.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 16:49:36.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 16:49:36.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:01:46.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:01:46.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:06:29.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:08:52.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:20:28.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:20:34.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:20:34.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/07 17:20:34.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/02/06 16:18:23.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:46:57.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:49:01.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:51:42.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:51:42.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:51:42.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:54:10.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:54:10.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:56:37.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:56:37.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:56:37.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 17:59:31.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:03:06.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:03:06.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:03:06.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:05:03.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:05:03.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:05:03.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:05:58.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:06:42.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROJECT_HOSPITAL.VW_ALLBOARD_DATE (ALL_TIME) values (to_timestamp('25/01/02 18:07:53.000000000','RR/MM/DD HH24:MI:SSXFF'));
--------------------------------------------------------
--  DDL for Index PK_ADMIN_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_ADMIN_ID" ON "PROJECT_HOSPITAL"."ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BODY_PART_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_BODY_PART_ID" ON "PROJECT_HOSPITAL"."BODY_CLASSIFICATION" ("BODY_PART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DEPT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DEPT_ID" ON "PROJECT_HOSPITAL"."DEPT" ("DEPT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DISEASE_BOARD_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DISEASE_BOARD_ID" ON "PROJECT_HOSPITAL"."DISEASE_BOARD" ("DISEASE_BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DISEASE_PART_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DISEASE_PART_ID" ON "PROJECT_HOSPITAL"."DISEASE_CLASSIFICATION" ("DISEASE_PART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DOCTOR_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DOCTOR_ID" ON "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_EX_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_EX_ID" ON "PROJECT_HOSPITAL"."EXAMINATION_BOARD" ("EXAMINATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FILESTORE_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_FILESTORE_ID" ON "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_HB_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_HB_ID" ON "PROJECT_HOSPITAL"."HEALTH_BOARD" ("HB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_HP_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_HP_ID" ON "PROJECT_HOSPITAL"."HOSPITAL" ("HP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_OT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_OT_ID" ON "PROJECT_HOSPITAL"."OPENING_TIME" ("OT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_QNA_ID" ON "PROJECT_HOSPITAL"."QNA_BOARD" ("QNA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RECORD_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_RECORD_ID" ON "PROJECT_HOSPITAL"."RECORD" ("RECORD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REFER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_REFER_ID" ON "PROJECT_HOSPITAL"."REFERRAL" ("REFER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RESERV_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_RESERV_ID" ON "PROJECT_HOSPITAL"."RESERVATION" ("RESERV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TIMETABLE_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_TIMETABLE_ID" ON "PROJECT_HOSPITAL"."TIMETABLE" ("TIMETABLE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USER_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_USER_NUM" ON "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007875
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."SYS_C007875" ON "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ADMIN_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_ADMIN_ID" ON "PROJECT_HOSPITAL"."ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BODY_PART_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_BODY_PART_ID" ON "PROJECT_HOSPITAL"."BODY_CLASSIFICATION" ("BODY_PART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DEPT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DEPT_ID" ON "PROJECT_HOSPITAL"."DEPT" ("DEPT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DISEASE_BOARD_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DISEASE_BOARD_ID" ON "PROJECT_HOSPITAL"."DISEASE_BOARD" ("DISEASE_BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DISEASE_PART_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DISEASE_PART_ID" ON "PROJECT_HOSPITAL"."DISEASE_CLASSIFICATION" ("DISEASE_PART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_EX_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_EX_ID" ON "PROJECT_HOSPITAL"."EXAMINATION_BOARD" ("EXAMINATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FILESTORE_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_FILESTORE_ID" ON "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_HB_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_HB_ID" ON "PROJECT_HOSPITAL"."HEALTH_BOARD" ("HB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_HP_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_HP_ID" ON "PROJECT_HOSPITAL"."HOSPITAL" ("HP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DOCTOR_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_DOCTOR_ID" ON "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_OT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_OT_ID" ON "PROJECT_HOSPITAL"."OPENING_TIME" ("OT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_QNA_ID" ON "PROJECT_HOSPITAL"."QNA_BOARD" ("QNA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RECORD_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_RECORD_ID" ON "PROJECT_HOSPITAL"."RECORD" ("RECORD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REFER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_REFER_ID" ON "PROJECT_HOSPITAL"."REFERRAL" ("REFER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RESERV_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_RESERV_ID" ON "PROJECT_HOSPITAL"."RESERVATION" ("RESERV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TIMETABLE_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_TIMETABLE_ID" ON "PROJECT_HOSPITAL"."TIMETABLE" ("TIMETABLE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USER_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."PK_USER_NUM" ON "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007875
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_HOSPITAL"."SYS_C007875" ON "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TRG_ADMIN_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_ADMIN_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON ADMIN
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_ADMIN_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_BODY_PART_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_BODY_PART_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON BODY_CLASSIFICATION
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_BODY_PART_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_DEPT_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_DEPT_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON DEPT
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_DEPT_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_DISEASE_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON DISEASE_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_DISEASE_PART_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_PART_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON DISEASE_CLASSIFICATION
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_PART_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_EX_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_EX_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON EXAMINATION_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_EX_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HEALTH_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_HEALTH_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON HEALTH_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_HEALTH_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HOSPITAL_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_HOSPITAL_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON HOSPITAL
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_HOSPITAL_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HP_MEMBER_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_HP_MEMBER_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON HP_MEMBER
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_HP_MEMBER_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_OPENING_TIME_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_OPENING_TIME_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON OPENING_TIME
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_OPENING_TIME_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_QNA_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_QNA_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON QNA_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
        :NEW.REPLY_AT := CURRENT_TIMESTAMP; 
    END IF;
END;


/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_QNA_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_RECORD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_RECORD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON RECORD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_RECORD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_REFERRAL_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_REFERRAL_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON REFERRAL
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_REFERRAL_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_RESERVATION_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_RESERVATION_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON RESERVATION
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_RESERVATION_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_TIMETABLE_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_TIMETABLE_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON TIMETABLE
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_TIMETABLE_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_USER_NUM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_USER_NUM" 
BEFORE INSERT ON USER_CLIENT
FOR EACH ROW
DECLARE
    max_seq NUMBER;
    today_prefix VARCHAR2(6);
BEGIN
    today_prefix := TO_CHAR(SYSDATE, 'YYMMDD');

    SELECT NVL(MAX(SUBSTR(USER_NUM, -3)), 0)
    INTO max_seq
    FROM USER_CLIENT
    WHERE SUBSTR(USER_NUM, 1, 6) = today_prefix;

    -- 새로운 USER_NUM 설정
    :NEW.USER_NUM := today_prefix || LPAD(max_seq + 1, 3, '0');

    -- CREATED_AT 기본값 설정
    IF :NEW.CREATED_AT IS NULL THEN
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_USER_NUM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_USER_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_USER_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON USER_CLIENT
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_USER_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_ADMIN_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_ADMIN_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON ADMIN
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_ADMIN_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_BODY_PART_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_BODY_PART_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON BODY_CLASSIFICATION
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_BODY_PART_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_DEPT_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_DEPT_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON DEPT
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_DEPT_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_DISEASE_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON DISEASE_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_DISEASE_PART_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_PART_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON DISEASE_CLASSIFICATION
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_DISEASE_PART_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_EX_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_EX_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON EXAMINATION_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_EX_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HEALTH_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_HEALTH_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON HEALTH_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_HEALTH_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HOSPITAL_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_HOSPITAL_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON HOSPITAL
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_HOSPITAL_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HP_MEMBER_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_HP_MEMBER_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON HP_MEMBER
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_HP_MEMBER_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_OPENING_TIME_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_OPENING_TIME_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON OPENING_TIME
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_OPENING_TIME_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_QNA_BOARD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_QNA_BOARD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON QNA_BOARD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
        :NEW.REPLY_AT := CURRENT_TIMESTAMP; 
    END IF;
END;


/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_QNA_BOARD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_RECORD_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_RECORD_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON RECORD
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_RECORD_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_REFERRAL_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_REFERRAL_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON REFERRAL
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_REFERRAL_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_RESERVATION_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_RESERVATION_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON RESERVATION
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_RESERVATION_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_TIMETABLE_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_TIMETABLE_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON TIMETABLE
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_TIMETABLE_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_USER_TIMESTAMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_USER_TIMESTAMP" 
BEFORE INSERT OR UPDATE ON USER_CLIENT
FOR EACH ROW
BEGIN
    IF INSERTING THEN 
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;

    IF UPDATING THEN
        :NEW.UPDATED_AT := CURRENT_TIMESTAMP; 
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_USER_TIMESTAMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_USER_NUM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT_HOSPITAL"."TRG_USER_NUM" 
BEFORE INSERT ON USER_CLIENT
FOR EACH ROW
DECLARE
    max_seq NUMBER;
    today_prefix VARCHAR2(6);
BEGIN
    today_prefix := TO_CHAR(SYSDATE, 'YYMMDD');

    SELECT NVL(MAX(SUBSTR(USER_NUM, -3)), 0)
    INTO max_seq
    FROM USER_CLIENT
    WHERE SUBSTR(USER_NUM, 1, 6) = today_prefix;

    -- 새로운 USER_NUM 설정
    :NEW.USER_NUM := today_prefix || LPAD(max_seq + 1, 3, '0');

    -- CREATED_AT 기본값 설정
    IF :NEW.CREATED_AT IS NULL THEN
        :NEW.CREATED_AT := CURRENT_TIMESTAMP;
    END IF;
END;

/
ALTER TRIGGER "PROJECT_HOSPITAL"."TRG_USER_NUM" ENABLE;
--------------------------------------------------------
--  DDL for Function GET_SEQ
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "PROJECT_HOSPITAL"."GET_SEQ" RETURN VARCHAR2 IS
BEGIN 
    RETURN OT_ID_SEQ.NEXTVAL;
END;


/
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."ADMIN" ADD CONSTRAINT "CHK_ADMIN_TYPE" CHECK (ADMIN_TYPE IN ('협력', '일반')) ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."ADMIN" ADD CONSTRAINT "PK_ADMIN_ID" PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BODY_CLASSIFICATION
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."BODY_CLASSIFICATION" ADD CONSTRAINT "PK_BODY_PART_ID" PRIMARY KEY ("BODY_PART_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."DEPT" MODIFY ("DEPT_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."DEPT" ADD CONSTRAINT "PK_DEPT_ID" PRIMARY KEY ("DEPT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DISEASE_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."DISEASE_BOARD" ADD CONSTRAINT "PK_DISEASE_BOARD_ID" PRIMARY KEY ("DISEASE_BOARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DISEASE_CLASSIFICATION
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."DISEASE_CLASSIFICATION" ADD CONSTRAINT "PK_DISEASE_PART_ID" PRIMARY KEY ("DISEASE_PART_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAMINATION_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."EXAMINATION_BOARD" MODIFY ("EXAMINATION_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."EXAMINATION_BOARD" ADD CONSTRAINT "PK_EX_ID" PRIMARY KEY ("EXAMINATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FILESTORE
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."FILESTORE" ADD CONSTRAINT "PK_FILESTORE_ID" PRIMARY KEY ("FILESTORE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HEALTH_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."HEALTH_BOARD" ADD CONSTRAINT "PK_HB_ID" PRIMARY KEY ("HB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOSPITAL
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."HOSPITAL" MODIFY ("HP_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HOSPITAL" MODIFY ("HP_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HOSPITAL" MODIFY ("HP_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HOSPITAL" MODIFY ("HP_REGION" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HOSPITAL" ADD CONSTRAINT "PK_HP_ID" PRIMARY KEY ("HP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HP_MEMBER
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" MODIFY ("DR_PW" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" MODIFY ("DR_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" MODIFY ("DR_PHONE_NUM" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" ADD CONSTRAINT "CHK_DR_POSITION" CHECK (DR_POSITION IN ('과장', '교수', '레지', '인턴')) ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" ADD CONSTRAINT "PK_DOCTOR_ID" PRIMARY KEY ("DR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OPENING_TIME
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."OPENING_TIME" MODIFY ("OT_STATE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."OPENING_TIME" ADD CONSTRAINT "PK_OT_ID" PRIMARY KEY ("OT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."OPENING_TIME" MODIFY ("YEAR_DATE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."OPENING_TIME" ADD CONSTRAINT "CHK_OT_STATE" CHECK (OT_STATE IN ('정상진료', '휴진-진료없음', '정원초과')) ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."QNA_BOARD" ADD CONSTRAINT "PK_QNA_ID" PRIMARY KEY ("QNA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECORD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."RECORD" ADD CONSTRAINT "CHK_RECORD_TYPE" CHECK (RECORD_TYPE IN ('외래', '입원', '응급')) ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."RECORD" ADD CONSTRAINT "PK_RECORD_ID" PRIMARY KEY ("RECORD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REFERRAL
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" MODIFY ("REFER_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "CHK_RECEIVE_CHK" CHECK (RECEIVE_CHK IN ('1', '2', '3', '4')) ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "PK_REFER_ID" PRIMARY KEY ("REFER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."RESERVATION" MODIFY ("RESERV_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."RESERVATION" ADD CONSTRAINT "PK_RESERV_ID" PRIMARY KEY ("RESERV_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."RESERVATION" MODIFY ("OT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TIMETABLE
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."TIMETABLE" ADD CONSTRAINT "PK_TIMETABLE_ID" PRIMARY KEY ("TIMETABLE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."TIMETABLE" MODIFY ("TIME_TYPE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."TIMETABLE" ADD CONSTRAINT "CHK_TIME_TYPE" CHECK (TIME_TYPE IN ('오전', '오후', '휴진')) ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_CLIENT
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" MODIFY ("USER_PW" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" MODIFY ("USER_PHONE_NUM" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" MODIFY ("USER_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD CONSTRAINT "CHK_GENDER" CHECK (USER_GENDER IN ('M', 'F')) ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD CONSTRAINT "CHK_SEND_STATE" CHECK (SEND_STATE IN ('Y', 'N' )) ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD CONSTRAINT "PK_USER_NUM" PRIMARY KEY ("USER_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD UNIQUE ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."ADMIN" ADD CONSTRAINT "FK_ADMIN_HP_ID" FOREIGN KEY ("HP_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HOSPITAL" ("HP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."DEPT" ADD CONSTRAINT "FK_DEPT_DOCTOR_ID" FOREIGN KEY ("DR_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."DEPT" ADD CONSTRAINT "FK_DEPT_HP_ID" FOREIGN KEY ("HP_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HOSPITAL" ("HP_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DISEASE_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."DISEASE_BOARD" ADD CONSTRAINT "FK_DISEASE_BODY_PART_ID" FOREIGN KEY ("BODY_PART_ID")
	  REFERENCES "PROJECT_HOSPITAL"."BODY_CLASSIFICATION" ("BODY_PART_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."DISEASE_BOARD" ADD CONSTRAINT "FK_DISEASE_FILEONE" FOREIGN KEY ("FILEONE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."DISEASE_BOARD" ADD CONSTRAINT "FK_DISEASE_PART_ID" FOREIGN KEY ("DISEASE_PART_ID")
	  REFERENCES "PROJECT_HOSPITAL"."DISEASE_CLASSIFICATION" ("DISEASE_PART_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAMINATION_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."EXAMINATION_BOARD" ADD CONSTRAINT "FK_EX_BODY_PART_ID" FOREIGN KEY ("BODY_PART_ID")
	  REFERENCES "PROJECT_HOSPITAL"."BODY_CLASSIFICATION" ("BODY_PART_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HEALTH_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."HEALTH_BOARD" ADD CONSTRAINT "FK_HEALTH_FILEID" FOREIGN KEY ("FILEONE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HP_MEMBER
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" ADD CONSTRAINT "FK_HPMEM_DEPT_ID" FOREIGN KEY ("DEPT_ID")
	  REFERENCES "PROJECT_HOSPITAL"."DEPT" ("DEPT_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" ADD CONSTRAINT "FK_HPMEM_FILEONE" FOREIGN KEY ("FILEONE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" ADD CONSTRAINT "FK_HPMEM_FILETHREE" FOREIGN KEY ("FILETHREE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."HP_MEMBER" ADD CONSTRAINT "FK_HPMEM_FILETWO" FOREIGN KEY ("FILETWO")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPENING_TIME
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."OPENING_TIME" ADD CONSTRAINT "FK_OT_DR_ID" FOREIGN KEY ("DR_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_BOARD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."QNA_BOARD" ADD CONSTRAINT "FK_QNA_FILEONE" FOREIGN KEY ("FILEONE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."QNA_BOARD" ADD CONSTRAINT "FK_QNA_FILETHREE" FOREIGN KEY ("FILETHREE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."QNA_BOARD" ADD CONSTRAINT "FK_QNA_FILETWO" FOREIGN KEY ("FILETWO")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."QNA_BOARD" ADD CONSTRAINT "FK_QNA_USER_NUM" FOREIGN KEY ("USER_NUM")
	  REFERENCES "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECORD
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."RECORD" ADD CONSTRAINT "FK_RECORD_DOCTOR_ID" FOREIGN KEY ("DR_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."RECORD" ADD CONSTRAINT "FK_RECORD_RESERV_ID" FOREIGN KEY ("RESERV_ID")
	  REFERENCES "PROJECT_HOSPITAL"."RESERVATION" ("RESERV_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."RECORD" ADD CONSTRAINT "FK_RECORD_USER_NUM" FOREIGN KEY ("USER_NUM")
	  REFERENCES "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REFERRAL
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "FK_REFERRAL_R_DOCTOR_ID" FOREIGN KEY ("R_DR_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "FK_REFERRAL_S_DOCTOR_ID" FOREIGN KEY ("S_DR_ID")
	  REFERENCES "PROJECT_HOSPITAL"."HP_MEMBER" ("DR_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "FK_REFERRAL_USER_NUM" FOREIGN KEY ("USER_NUM")
	  REFERENCES "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_NUM") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "FK_REFER_FILEONE" FOREIGN KEY ("FILEONE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "FK_REFER_FILETHREE" FOREIGN KEY ("FILETHREE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."REFERRAL" ADD CONSTRAINT "FK_REFER_FILETWO" FOREIGN KEY ("FILETWO")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."RESERVATION" ADD CONSTRAINT "FK_RESERV_OT_ID" FOREIGN KEY ("OT_ID")
	  REFERENCES "PROJECT_HOSPITAL"."OPENING_TIME" ("OT_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."RESERVATION" ADD CONSTRAINT "FK_RESERV_TIME_ID" FOREIGN KEY ("TIMETABLE_ID")
	  REFERENCES "PROJECT_HOSPITAL"."TIMETABLE" ("TIMETABLE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."RESERVATION" ADD CONSTRAINT "FK_RESERV_USER_NUM" FOREIGN KEY ("USER_NUM")
	  REFERENCES "PROJECT_HOSPITAL"."USER_CLIENT" ("USER_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_CLIENT
--------------------------------------------------------

  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD CONSTRAINT "FK_USER_FILEONE" FOREIGN KEY ("FILEONE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD CONSTRAINT "FK_USER_FILETHREE" FOREIGN KEY ("FILETHREE")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
  ALTER TABLE "PROJECT_HOSPITAL"."USER_CLIENT" ADD CONSTRAINT "FK_USER_FILETWO" FOREIGN KEY ("FILETWO")
	  REFERENCES "PROJECT_HOSPITAL"."FILESTORE" ("FILESTORE_ID") ENABLE;
