--INSERT

SELECT * FROM DEPT;

INSERT INTO dept VALUES(50, 'Training', 'Tokyo');
INSERT INTO dept(deptno, loc) VALUES(60,'Tokyo');

SELECT * FROM dept;

--UPDATE

SELECT * FROM emp;

UPDATE empSET sal = sal + 200 
WHERE deptno = 10;

SELECT * FROM emp;


--DELETE 

SELECT * FROM dept;

DELETE FROM dept
WHERE deptno in (50, 60);

SELECT * FROM dept;


