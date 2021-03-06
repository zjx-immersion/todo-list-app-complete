CREATE TABLE IF NOT EXISTS TODODB.TODOLIST (
    ID BIGINT GENERATED BY DEFAULT AS IDENTITY,
	NAME VARCHAR(50) NOT NULL,
	PURPOSE VARCHAR(255) NOT NULL,
	CREATED_DATE DATE,
	MODIFIED_DATE DATE,
	PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS TODODB.TODOLIST_TASK (
	TODOLIST_ID BIGINT NOT NULL,
	TASK_ID BIGINT NOT NULL,
	PRIMARY KEY (TODOLIST_ID,TASK_ID),
	FOREIGN KEY (TODOLIST_ID) REFERENCES TODODB.TODOLIST(ID) ON DELETE CASCADE, 
	FOREIGN KEY (TASK_ID) REFERENCES TODODB.TASK(ID) ON DELETE CASCADE
);