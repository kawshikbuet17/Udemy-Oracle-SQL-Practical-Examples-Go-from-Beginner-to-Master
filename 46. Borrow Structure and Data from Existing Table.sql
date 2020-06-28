--Create table from existing table 
--with data 

CREATE TABLE empcopy1 (empid, name, designation, salary, dno)
AS SELECT empno, ename, job, sal, deptno FROM emp 
   WHERE deptno = 10;

SELECT * FROM empcopy1; 
--empcopy1 table is made 


--Create table from an existing table 
--without data 
--only structure 

CREATE TABLE empcopy2(empid, name, designation, salary, dno)
AS SELECT empno, ename, job, sal, deptno FROM emp 
   WHERE 1 = 0;
	 
SELECT * FROM empcopy2;
--where er condition vul deway 
--datagulo copy hote parbena 
--but structure copy hoye jabe 
