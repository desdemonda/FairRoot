
CREATE TABLE FAIRDBLOGENTRYVAL(
    SEQNO         INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    TIMESTART     DATETIME NOT NULL,
    TIMEEND       DATETIME NOT NULL,
    DETECTORMASK  TINYINT,
    SIMMASK       TINYINT,
    TASK          INT,
    AGGREGATENO   INT,
    CREATIONDATE  DATETIME NOT NULL,
    INSERTDATE    DATETIME NOT NULL
);

CREATE TABLE FAIRDBLOGENTRY(
    SEQNO        INT,
    ROW_COUNTER  INT,
    TABLENAME    TEXT,
    SEQNOMIN     INT NOT NULL,
    SEQNOMAX     INT NOT NULL,
    NUMSEQNO     INT NOT NULL,
    USERNAME     TEXT,
    PROCESSNAME  TEXT,
    HOSTNAME     TEXT,
    SERVERNAME   TEXT,
    LOG_REASON   TEXT
 );


CREATE TABLE GLOBALSEQNO(
    TABLENAME      CHAR(64) NOT NULL PRIMARY KEY,
    LASTUSEDSEQNO  INT );
INSERT INTO GLOBALSEQNO VALUES ('*',900000000);

