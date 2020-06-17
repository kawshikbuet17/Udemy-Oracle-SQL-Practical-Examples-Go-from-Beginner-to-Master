SELECT ename, dname 
FROM emp e, dept d
WHERE e.deptno = d.deptno;
-- eta inner join


SELECT ename, dname 
FROM emp 
LEFT OUTER JOIN dept USING (deptno);
-- (ename NOT NULL & dname NULL) included 
-- mane left not null


SELECT ename, dname 
FROM emp 
RIGHT OUTER JOIN dept USING (deptno);
-- (ename NULL & dname NOT NULL) included 
-- mane right not null


SELECT ename, dname 
FROM emp 
FULL OUTER JOIN dept USING (deptno);
-- jekono ek side NULL holeo included hobe (onno side NOT NULL holei)