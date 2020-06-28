--RANK() 
--syntax:
-- SELECT jaja_select_korbo, RANK() OVER (ORDER BY jeta_diye order_hobe AESC/DESC) FROM table_name 
--partition korte bolle order by er age partition by jeta_diye_partition 

--salarywise ranking 
SELECT empno, deptno, sal, RANK() OVER (ORDER BY sal DESC) as rnk 
FROM emp; 

--deptwise vabe partition kore salarywise rank koro 
SELECT empno, deptno, sal, RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) as rnk 
FROM emp; 
--proti dept e ranking korbe 

--RANK() for known values
--find the rank of person with 
--sal = 1250 and comm = 500

SELECT RANK(1250, 500) 
WITHIN GROUP(ORDER BY sal DESC, comm DESC) as rnk 
FROM emp;


--DENSE_RANK()

--salarywise rank koro 
SELECT empno, deptno, sal, DENSE_RANK() OVER (ORDER BY sal DESC) as rnk 
FROM emp; 
--rank er sathe difference holo
--rank e 1,2,2 hole porer ta 3 na hoye 4 hobe 
--but dense rank e 1,2,2 er por 3 hobe 
--difference bojhar jonno run->
SELECT empno, deptno, sal, RANK() OVER (ORDER BY sal DESC) as normalrank, DENSE_RANK() OVER (ORDER BY sal DESC) as denserank  
FROM emp; 


--deptwise vabe partition kore salarywise dense_rank koro 
SELECT empno, deptno, sal, DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) as rnk 
FROM emp; 
--same, dense rank e 1,2,2,4 na hoye 1,2,2,3 evabe hobe

--DENSE_RANK() for known values
--find the rank of person with 
--sal = 1250 and comm = 500

SELECT DENSE_RANK(1250, 500) 
WITHIN GROUP(ORDER BY sal DESC, comm DESC) as rnk 
FROM emp;


--9th highest salary je emp pay
--tar nam and deptno and salary likho 
SELECT ename, sal, deptno 
FROM (SELECT ename, sal, deptno, DENSE_RANK() OVER (ORDER BY sal DESC) as rnk
FROM emp)
WHERE rnk = 9;

