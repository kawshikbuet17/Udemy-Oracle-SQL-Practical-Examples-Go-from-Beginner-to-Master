-- find overall maximum salary 
SELECT MAX(sal)
FROM emp;

--find deptwise avg salary with dept num 
SELECT deptno, AVG(sal)
FROM emp
GROUP BY DEPTNO;

--find deptwise avg salary with values higher than 2000
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal)>2000;
