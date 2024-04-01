
ALTER TABLE album DROP FOREIGN KEY album_ibfk_1;


ALTER TABLE musician RENAME TO singer;


ALTER TABLE singer CHANGE musicianName singerName VARCHAR(50);


ALTER TABLE album CHANGE musicianName singerName VARCHAR(50);


ALTER TABLE album ADD CONSTRAINT album_ibfk_1 FOREIGN KEY (singerName) REFERENCES singer(singerName);


ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;


DROP TABLE IF EXISTS band;
