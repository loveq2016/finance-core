CREATE TABLE USER
(
    ID VARCHAR(50) NOT NULL,
    USERNAME VARCHAR(100),
    ACCOUNT VARCHAR(100),
    PASSWORD VARCHAR(100),
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
);
ALTER TABLE USER ADD NAME VARCHAR(100);
ALTER TABLE USER ADD EMAIL VARCHAR(100);
ALTER TABLE USER ADD PHONE VARCHAR(100);


CREATE TABLE USER_ROLE
(
    USER_ID VARCHAR(50) NOT NULL,
	ROLE_ID VARCHAR(50) NOT NULL
);

CREATE TABLE ROLE
(
    ID VARCHAR(50) NOT NULL,
    NAME VARCHAR(100),
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
);

CREATE TABLE ROLE_PERMISSION
(
	ROLE_ID VARCHAR(50) NOT NULL,
	PERMISSION_ID VARCHAR(50) NOT NULL
);

CREATE TABLE PERMISSION
(
    ID VARCHAR(50) NOT NULL,
    PARENT_ID VARCHAR(50),
    NAME VARCHAR(100),
    URL VARCHAR(100),
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
);
ALTER TABLE USER ADD LEVEL VARCHAR(1);
ALTER TABLE ROLE ADD TAG VARCHAR(100);
ALTER TABLE PERMISSION ADD TAG VARCHAR(100);

INSERT INTO USER(ID, NAME, ACCOUNT, PASSWORD, STATUS) VALUES('e78fc614ce459cc167000', 'lock', 'lock', '123456', '1')
INSERT INTO USER(ID, NAME, ACCOUNT, PASSWORD, STATUS) VALUES('e78fc614ce459cc168000', 'jack', 'jack', '123456', '1')
INSERT INTO ROLE(ID, NAME, STATUS) VALUES('e88fc614ce459cc168001', 'manage', '1')
INSERT INTO PERMISSION(ID, NAME, URL, STATUS) VALUES('e88fc614ce459cc168002', 'manage:building', '/manage/building', '1')
INSERT INTO USER_ROLE(USER_ID, ROLE_ID) VALUES('e88fc614ce459cc168000', 'e78fc614ce459cc168001')
INSERT INTO ROLE_PERMISSION(ROLE_ID, PERMISSION_ID) VALUES('e88fc614ce459cc168001', 'e88fc614ce459cc168002')

CREATE TABLE BUILDING
(
    ID VARCHAR(50) NOT NULL,
    TOWN_ID VARCHAR(50),
    BUILDING_NAME VARCHAR(100),
    BUILDING_YEAR VARCHAR(100),
    BUILDING_FLOOR VARCHAR(100),
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
);
INSERT INTO BUILDING(ID, BUILDING_NAME, BUILDING_YEAR, BUILDING_FLOOR, STATUS) VALUES('c78fc614ce459cc168000', '���Ϲ㳡', '2001', '56', '1')

CREATE TABLE REGION
(
    ID VARCHAR(50) NOT NULL,
    PARENT_ID VARCHAR(50),
    NAME VARCHAR(100),
    CODE VARCHAR(100),
    LEVEL CHAR(1),
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
)

CREATE TABLE PRODUCT
(
    ID VARCHAR(50) NOT NULL,
    USER_ID VARCHAR(50) NOT NULL,
    NAME VARCHAR(100),
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    TITLE VARCHAR(100),
    BIDDING_TYPE  CHAR(1),
    TERM  VARCHAR(10),
    LEVEL VARCHAR(10),
    YEAR_RATE  INT,
    MONEY      INT,
    REPAYMENT  CHAR(1),
    USE_DESC    VARCHAR(1000),
    PRIMARY KEY (ID)
);

CREATE TABLE USER_PRODUCT
(
    ID VARCHAR(50) NOT NULL,
    USER_ID VARCHAR(50) NOT NULL,
    PRODUCT_ID VARCHAR(50) NOT NULL,
    MONEY      INT,
    STATUS CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
)

CREATE TABLE USER_AUTH
(
    ID VARCHAR(50) NOT NULL,
    USER_ID VARCHAR(50) NOT NULL,
    AUTH_TYPE   CHAR(1),
    STATUS      CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
)

CREATE TABLE ACCOUNT
(
    ID VARCHAR(50) NOT NULL,
    USER_ID VARCHAR(50),
    NAME VARCHAR(100),
    STATUS CHAR(1),
    BALANCE  INT,
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
)

CREATE TABLE ACCOUNT_TRADE
(
    ID VARCHAR(50) NOT NULL,
    USER_ID VARCHAR(50),
    NAME VARCHAR(100),
    STATUS CHAR(1),
    TYPE   CHAR(1),
    SOURCE VARCHAR(10),
    AMOUNT  INT,
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
)

CREATE TABLE BANK_CARD
(
    ID VARCHAR(50) NOT NULL,
    USER_ID VARCHAR(50),
    ACCOUNT_NAME VARCHAR(100),
    BANK_NO VARCHAR(100),
    BANK_NAME VARCHAR(100),
    BANK_CODE VARCHAR(100),
    BANK_ADDRESS VARCHAR(100),
    STATUS CHAR(1),
    TYPE   CHAR(1),
    CREATE_TIME TIMESTAMP,
    UPDATE_TIME TIMESTAMP,
    REMARKS VARCHAR(1000),
    PRIMARY KEY (ID)
)

INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168000', 'e78fc614ce459cc167000', '扩大生产/经营', 'A', 1200, 125600, '36', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168001', 'e78fc614ce459cc167000', '购买货物/原材/设备', 'A', 1000, 125600, '25', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168002', 'e78fc614ce459cc167000', '第二次借款装修房子', 'B', 1200, 125600, '36', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168003', 'e78fc614ce459cc167000', '国企职员借款用于房屋装修', 'B', 1000, 125600, '25', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168004', 'e78fc614ce459cc167000', '扩大生产/经营', 'A', 1200, 125600, '36', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168005', 'e78fc614ce459cc167000', '购买货物/原材/设备', 'A', 1000, 125600, '25', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168006', 'e78fc614ce459cc167000', '第二次借款装修房子', 'B', 1200, 125600, '36', '1')
INSERT INTO PRODUCT(ID, USER_ID, TITLE, LEVEL, YEAR_RATE, MONEY, TERM, STATUS) VALUES('d78fc614ce459cc168007', 'e78fc614ce459cc167000', '国企职员借款用于房屋装修', 'B', 1000, 125600, '25', '1')

INSERT INTO USER_PRODUCT(ID, USER_ID, PRODUCT_ID, MONEY, CREATE_TIME) VALUES('g78fc614ce459cc168000', 'e78fc614ce459cc168000', 'd78fc614ce459cc168003', 10000, now())
INSERT INTO USER_PRODUCT(ID, USER_ID, PRODUCT_ID, MONEY, CREATE_TIME) VALUES('g78fc614ce459cc168001', 'f3009314e92335e748000', 'd78fc614ce459cc168003', 10000, now())

INSERT INTO USER_AUTH(ID, USER_ID, AUTH_TYPE, STATUS, CREATE_TIME) VALUES('f78fc614ce459cc168000', 'e78fc614ce459cc168000', 'A', '1', now())
INSERT INTO USER_AUTH(ID, USER_ID, AUTH_TYPE, STATUS, CREATE_TIME) VALUES('f78fc614ce459cc168001', 'e78fc614ce459cc168000', 'B', '1', now())
INSERT INTO USER_AUTH(ID, USER_ID, AUTH_TYPE, STATUS, CREATE_TIME) VALUES('f78fc614ce459cc168002', 'e78fc614ce459cc168000', 'C', '1', now())

INSERT INTO ACCOUNT(ID, USER_ID, BALANCE, STATUS, CREATE_TIME) VALUES('h78fc614ce459cc168000', 'e78fc614ce459cc168000', 0, '1', now())
SELECT
    b.name,
    d.*
FROM
    user_role a
JOIN
    role b
ON
    a.user_id = 'z19f5314e912819698000'
AND a.role_id = b.id --z19f5314e912819698000 admin
JOIN
    role_permission c
ON
    b.id = c.role_id
JOIN
    permission d
ON
    c.permission_id = d.id

http://itindex.net/detail/50593-web-%E9%A1%B9%E7%9B%AE-%E5%BA%94%E7%94%A8