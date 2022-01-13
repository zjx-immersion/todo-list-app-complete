CREATE TABLE IF NOT EXISTS TODODB.USER (
    ID BIGINT GENERATED BY DEFAULT AS IDENTITY,
	USER_NAME VARCHAR(30) NOT NULL,
	FIRST_NAME VARCHAR(50) NOT NULL,
	MIDDLE_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50) NOT NULL,
	ROLE_ID VARCHAR(5),
	EMAIL   VARCHAR(120),
	CREATED_DATE DATE,
	MODIFIED_DATE DATE,
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS TODODB.TASK (
    ID BIGINT GENERATED BY DEFAULT AS IDENTITY,
	NAME VARCHAR(255) NOT NULL,
	DESCRIPTION VARCHAR(500) NOT NULL,
	STATUS VARCHAR(25),
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS TODODB.TASK_ASSIGNMENT (
    TASK_ID BIGINT NOT NULL,
	USER_ID BIGINT NOT NULL,
	PRIMARY KEY (TASK_ID,USER_ID),
	FOREIGN KEY (TASK_ID) REFERENCES TODODB.TASK(ID) ON DELETE CASCADE,
	FOREIGN KEY (USER_ID) REFERENCES TODODB.USER(ID) ON DELETE CASCADE
);