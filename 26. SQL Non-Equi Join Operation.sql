SELECT * FROM salgrade;
SELECT * FROM emp;

-- print emp name with tar salary grade 
-- grade mane kon range er moddhe pore 
-- that means salary column ke onno table er 
-- duita column er sathe react korate hobe 

SELECT ename, sal, grade
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal;
-- eta non-equality join 

