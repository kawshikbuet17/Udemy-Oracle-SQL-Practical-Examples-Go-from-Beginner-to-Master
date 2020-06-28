--Alter table mane 
--table e new column add kora 
/*
CREATE TABLE test 
(A VARCHAR2(20),
 B VARCHAR2(20),
 C DATE,
 D NUMBER(5,2));
 
INSERT INTO test VALUES('tokyo', 'japan', SYSDATE, 123.45);
*/
SELECT * FROM test;

-- akhon test table e column ache 4 ta. A,B,C,D 
-- E, F column add korte chaile ->
ALTER TABLE test add(E VARCHAR2(20), F NUMBER);
SELECT* FROM test;

--akhon C, E column jodi out korte chai ->
ALTER TABLE test DROP(C, E);
SELECT * FROM test;


--table er kono column er
--datatype change kora 

ALTER TABLE test MODIFY A CHAR(15);

-- sob dhoroner datatype change accept korbena 
-- jayga besi dorkar, kom allocate korle kaj korbena 


--COLUMN rename kora 

ALTER TABLE test RENAME COLUMN B to BNew;
SELECT * FROM test;

--Table er nam rename kora 

RENAME test to testnew;
--akhon test nam e kichu korle kaj korbena 
--testnew nam e korte hobe 

--Drop table 
--akhon drop korte testnew diyei drop korte hbe 
DROP TABLE testnew; 