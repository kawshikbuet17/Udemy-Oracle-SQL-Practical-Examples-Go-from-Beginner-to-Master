-- jesob Dept e employee ache, show them 
-- employee na thakle dont show 

SELECT * 
FROM dept;

SELECT dname
FROM dept
WHERE deptno in (SELECT deptno FROM emp);

-- btw, SELECT deptno FROM emp; -- ete repeated data o dekhabe. 


--second process
SELECT dname
FROM dept d
WHERE EXISTS (	SELECT deptno
								FROM emp e
								WHERE e.deptno = d.deptno
						  );