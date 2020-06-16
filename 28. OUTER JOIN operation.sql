-- inner join : duita table er moddhekar join 
-- outer join : inner join + data which may not satisfy inner join (from dui table er jekono ekta)

SELECT * FROM DEPT;
SELECT * FROM emp;

SELECT ename, dname 
FROM emp e, dept d
WHERE e.deptno = d.deptno;
--eta inner join. jesob dept er emp nai,
--tader k show korbe na. solution is outer join 

SELECT ename, dname 
FROM emp e, dept d
WHERE e.deptno(+) = d.deptno;
--eta outer join. jesob dept er kono emp nai setao include hbe 

SELECT ename, dname 
FROM emp e, dept d
WHERE e.deptno = d.deptno(+);
--eta korle sesob emp o dekhabe jader nam e kono dept nai. 

--NB : jar sathe (+) thakbe setar NULL ke include korbe. 
--so e.deptno(+) mane (emp=NULL & dept=Something) included  
--d.deptno(+) mane (emp=Something & dept=NULL) included 
--duipashei (+) dewa jabena. outer join one sided


