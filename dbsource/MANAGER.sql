--------------------------------
-- MANAGER
--------------------------------
DROP TABLE MANAGER CASCADE CONSTRAINTS;
CREATE TABLE MANAGER(
    NO              NUMBER              PRIMARY KEY
    , ID            VARCHAR2(30)        NOT NULL UNIQUE
    , PWD           VARCHAR2(100)       NOT NULL
    , NAME          VARCHAR2(15)        NOT NULL
    , PHONE         CHAR(13)            
    , EMAIL         VARCHAR2(100)
    , ENROLL_DATE   TIMESTAMP           DEFAULT SYSDATE
    , MODIFY_DATE   TIMESTAMP           DEFAULT SYSDATE
    , STATUS        CHAR(1)             DEFAULT 'N' CHECK(STATUS IN('Y','N'))
);

DROP SEQUENCE SEQ_MANAGER_NO;
CREATE SEQUENCE SEQ_MANAGER_NO NOCACHE NOCYCLE;

INSERT INTO MANAGER(NO, ID, PWD, NAME, PHONE, EMAIL) VALUES (SEQ_MANAGER_NO.NEXTVAL, 'admin', '1234', '°ü¸®ÀÚ', '010-1234-5678', 'admin@naver.com');

SELECT * FROM MANAGER;
