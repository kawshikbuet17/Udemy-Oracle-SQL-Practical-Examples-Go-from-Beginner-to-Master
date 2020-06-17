-- highest deptwise avg salary show koro 

/*SELECT deptno, MAX(AVG(sal))
  FROM emp
  GROUP BY deptno
*/
--eta korle error dibe. karon max/avg duita grp by diye kaj kore
--eksathe kaj korte arekta grp by lagbe 
--solution is :

SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) = ( SELECT MAX(AVG(sal))
		    FROM emp
		    GROUP BY deptno);


-- sesob emp er nam and salary show koro 
-- jara dept e highest paid 
SELECT ename, sal, deptno
FROM emp 
WHERE (deptno, sal) IN (SELECT deptno, MAX(sal) 
                        FROM emp 
                        GROUP BY deptno);

--alternate way :
SELECT ename, sal, deptno 
FROM emp e1 
WHERE sal IN (SELECT MAX(sal) 
              FROM emp e2 
              WHERE e2.deptno = e1.deptno);


--alternate way 2 :
SELECT ename, sal, e1.deptno 
FROM emp e1 , (SELECT deptno, MAX(sal) as mx
               FROM emp 
	       GROUP BY deptno) e2 
WHERE sal = mx AND e1.deptno = e2.deptno;

