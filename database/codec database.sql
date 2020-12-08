CREATE TABLE COLLEGE
(
  ID_COLLEGE INT NOT NULL,
  NAME_ARABIC VARCHAR(255) NOT NULL,
  NAME_ENGLISH VARCHAR(255) NOT NULL,
  CODE_OF_COLLEGE VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_COLLEGE)
);

CREATE TABLE SECTION
(
  ID_SECTION INT NOT NULL,
  NAME_ARABIC VARCHAR(255) NOT NULL,
  NAME_ENGLISH VARCHAR(255) NOT NULL,
  CODE_SECTION VARCHAR(255) NOT NULL,
  ID_COLLEGE INT NOT NULL,
  PRIMARY KEY (ID_SECTION),
  FOREIGN KEY (ID_COLLEGE) REFERENCES COLLEGE(ID_COLLEGE)
);

CREATE TABLE SUBJECT
(
  ID_SUBJECT INT NOT NULL,
  NAME_ARABIC INT NOT NULL,
  NAME_ENGLISH INT NOT NULL,
  PRIMARY KEY (ID_SUBJECT)
);

CREATE TABLE STUDENT
(
  ID_STUDENT INT NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  DATE_OF_BIRTH DATE NOT NULL,
  PHONE VARCHAR(255) NOT NULL,
  ADDRES VARCHAR(255) NOT NULL,
  NATIONATITY VARCHAR(255) NOT NULL,
  DIGREE VARCHAR(255) NOT NULL,
  USER_NAME VARCHAR(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  CODE VARCHAR(255) NOT NULL,
  ID_SECTION INT NOT NULL,
  PRIMARY KEY (ID_STUDENT),
  FOREIGN KEY (ID_SECTION) REFERENCES SECTION(ID_SECTION)
);

CREATE TABLE SEASON
(
  ID_SEASON INT NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  DATE_ DATE NOT NULL,
  ID_SECTION INT NOT NULL,
  PRIMARY KEY (ID_SEASON),
  FOREIGN KEY (ID_SECTION) REFERENCES SECTION(ID_SECTION)
);

CREATE TABLE UNIVERSITY_OF_TEACHER
(
  ID_UNIVERSITY_OF_TEACHER INT NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  COUNTRY VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID_UNIVERSITY_OF_TEACHER)
);

CREATE TABLE SETTION_SUBJECT
(
  ID_SETTION_SUBJECT INT NOT NULL,
  CODE_SETTION_SUBJECT VARCHAR(255) NOT NULL,
  ID_PARENT_SUBJECT INT NOT NULL,
  TYPE INT NOT NULL,
  COUNT_OF_HOUR INT NOT NULL,
  ID_SECTION INT NOT NULL,
  ID_SUBJECT INT NOT NULL,
  PRIMARY KEY (ID_SETTION_SUBJECT),
  FOREIGN KEY (ID_SECTION) REFERENCES SECTION(ID_SECTION),
  FOREIGN KEY (ID_SUBJECT) REFERENCES SUBJECT(ID_SUBJECT)
);

CREATE TABLE TEACHER
(
  ID_TEACHER INT NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  DATE_OF_BIRTH DATE NOT NULL,
  DATE_OF_START_WORK DATE NOT NULL,
  ADDRES VARCHAR(255) NOT NULL,
  PHONE VARCHAR(255) NOT NULL,
  DIGREE VARCHAR(255) NOT NULL,
  ID_UNIVERSITY_OF_TEACHER INT NOT NULL,
  PRIMARY KEY (ID_TEACHER),
  FOREIGN KEY (ID_UNIVERSITY_OF_TEACHER) REFERENCES UNIVERSITY_OF_TEACHER(ID_UNIVERSITY_OF_TEACHER)
);

CREATE TABLE SUBJECT_SEASON_TEACHER
(
  ID_SUBJECT_SEASON_TEACHER INT NOT NULL,
  DATE_ INT NOT NULL,
  ID_SEASON INT NOT NULL,
  ID_TEACHER INT NOT NULL,
  ID_SETTION_SUBJECT INT NOT NULL,
  PRIMARY KEY (ID_SUBJECT_SEASON_TEACHER),
  FOREIGN KEY (ID_SEASON) REFERENCES SEASON(ID_SEASON),
  FOREIGN KEY (ID_TEACHER) REFERENCES TEACHER(ID_TEACHER),
  FOREIGN KEY (ID_SETTION_SUBJECT) REFERENCES SETTION_SUBJECT(ID_SETTION_SUBJECT)
);

CREATE TABLE RECORDS
(
  ID_ INT NOT NULL,
  DATE_ DATE NOT NULL,
  FINAL_DEGREE INT NOT NULL,
  ID_SUBJECT_SEASON_TEACHER INT NOT NULL,
  ID_STUDENT INT NOT NULL,
  PRIMARY KEY (ID_),
  FOREIGN KEY (ID_SUBJECT_SEASON_TEACHER) REFERENCES SUBJECT_SEASON_TEACHER(ID_SUBJECT_SEASON_TEACHER),
  FOREIGN KEY (ID_STUDENT) REFERENCES STUDENT(ID_STUDENT)
);