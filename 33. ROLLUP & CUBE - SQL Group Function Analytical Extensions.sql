SELECT deptno, job, sum(sal) as sumsal 
FROM emp 
GROUP BY deptno, job
ORDER BY deptno, job;

SELECT deptno, job, sum(sal) as sumsal 
FROM emp 
GROUP BY ROLLUP(deptno, job)
ORDER BY deptno, job;
-- rollup dile (deptno, job) akareo grouping hobe.
-- sob job alada sumsal toh hbei
-- (dept1, job1), (dept1, job2)... (dept2, job1)... evabeo grp hoye jabe. megagroup er moto.

SELECT deptno, job, sum(sal) as sumsal 
FROM emp 
GROUP BY CUBE(deptno, job)
ORDER BY deptno, job;
-- cube dile rollup hbe +
-- (dept1 er job1, dept2 er job1, .... ) alada dept er
-- same job niyeo grouping hbe megagrp 

