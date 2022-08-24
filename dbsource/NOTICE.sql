--------------------------------
-- NOTICE
--------------------------------
DROP TABLE Notice CASCADE CONSTRAINTS;

CREATE TABLE Notice (
	"N_NO"	    NUMBER		                NOT NULL,
    "N_CATE"	VARCHAR2(100)               NOT NULL,
	"N_TITLE"	VARCHAR2(100)		        NOT NULL,
	"N_CONTENT"	VARCHAR2(1000)		        NOT NULL,
    "N_WRITER"  NUMBER                      NOT NULL,
	"N_CNT"	    NUMBER	    DEFAULT 0	    NOT NULL,
	"N_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"N_MOD"	    TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
    STATUS  CHAR(1)     DEFAULT 'N' CHECK(STATUS IN ('Y','N'))
);

COMMENT ON COLUMN Notice."N_CATE" IS '��������/FAQ';

ALTER TABLE Notice ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"N_NO"
);

DROP SEQUENCE SEQ_Notice_NO;
CREATE SEQUENCE SEQ_Notice_NO NOCACHE NOCYCLE;

INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '�����λ�' , '�����λ�帳�ϴ�' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '1�б� ��������' , '���� 9�úη� 1�б� �������� ������ �����Դϴ�.' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '���� ���� �ȳ�' , '���񽺰� �Ͻ������� �ߴܵǴ� ������ ��Ÿ���� �ֽ��ϴ�. ���� �̿뿡������ ��� ����帳�ϴ�.' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '���� ���¾ȳ�' , '���ο� ���� ���� ���� �帳�ϴ�.' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '2�б� ��������' , '���� 9�úη� 2�б� �������� ������ �����Դϴ�.' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '���� �ߴ� �ȳ�' , '���� ���� �ȳ� �帳�ϴ�' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '3�б� ��������' , '���� 9�úη� 3�б� �������� ������ �����Դϴ�.' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '�߼��λ�' , '�߼��λ�帳�ϴ�' , 1);
INSERT INTO NOTICE (N_NO, N_CATE ,N_TITLE ,N_CONTENT ,N_WRITER ) VALUES ( SEQ_NOTICE_NO.NEXTVAL ,'��������', '4�б� ��������' , '���� 9�úη� 4�б� �������� ������ �����Դϴ�.' , 1);

COMMIT;

SELECT * FROM Notice;
--------------------------------
-- FAQ
--------------------------------
DROP TABLE FAQ CASCADE CONSTRAINTS;

CREATE TABLE FAQ (
	"FAQ_NO"	    NUMBER		                NOT NULL,
    "FAQ_CATE"	    VARCHAR2(100)               NOT NULL,
	"FAQ_TITLE"	    VARCHAR2(100)		        NOT NULL,
	"FAQ_CONTENT"	VARCHAR2(1000)		        NOT NULL,
    "FAQ_WRITER"    NUMBER                      NOT NULL,
	"FAQ_DATE"	    TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
     STATUS         CHAR(1)     DEFAULT 'N' CHECK(STATUS IN ('Y','N'))
);

DROP SEQUENCE SEQ_FAQ_NO;
CREATE SEQUENCE SEQ_FAQ_NO NOCACHE NOCYCLE;

COMMENT ON COLUMN FAQ."FAQ_CATE" IS '��������/FAQ';

ALTER TABLE FAQ ADD CONSTRAINT "PK_FAQ" PRIMARY KEY (
	"FAQ_NO"
);

INSERT INTO FAQ (FAQ_NO, FAQ_CATE , FAQ_TITLE , FAQ_CONTENT , FAQ_WRITER ) VALUES ( SEQ_FAQ_NO.NEXTVAL ,'���', '����ϴ¹�' , '��ν�û�� Ȩ���������� Ȯ���ϽǼ� �ֽ��ϴ�' , 1);
COMMIT;

SELECT * FROM FAQ;
--------------------------------
-- FAQ_CATEGORY
--------------------------------
DROP TABLE FAQ_CATEGORY CASCADE CONSTRAINTS;
CREATE TABLE FAQ_CATEGORY(
    CATEGORY_NO     NUMBER           PRIMARY KEY,
    CATEGORY_NAME   VARCHAR2(30)     NOT NULL
);

INSERT INTO FAQ_CATEGORY(CATEGORY_NO , CATEGORY_NAME) VALUES(10, '���');
INSERT INTO FAQ_CATEGORY(CATEGORY_NO , CATEGORY_NAME) VALUES(20, '�ݵ�');
INSERT INTO FAQ_CATEGORY(CATEGORY_NO , CATEGORY_NAME) VALUES(30, 'ķ����');
INSERT INTO FAQ_CATEGORY(CATEGORY_NO , CATEGORY_NAME) VALUES(40, '��Ÿ');
COMMIT;

SELECT * FROM FAQ_CATEGORY;

