-- employees with deptName 
-- onekvabe kora jay 

SELECT ename, dname 
FROM emp, dept 
WHERE emp.DEPTNO = dept.DEPTNO;

SELECT ename, dname 
FROM emp e, dept d
WHERE e.DEPTNO = d.DEPTNO;

--inner join using diyeo kora jay
-- using(key) dite hbe 

SELECT ename, dname
FROM emp INNER JOIN dept USING (deptno);

-- natural join dile emni e common column khuje nibe join er jonno (condition: column name same thakte hbe) 
SELECT ename, dname
FROM emp NATURAL JOIN dept;