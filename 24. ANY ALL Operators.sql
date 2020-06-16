-- select those emp who get more salary
-- than the highest salary amoung turner, miller, clark 

SELECT * 
FROM emp
WHERE sal > (SELECT sal FROM emp WHERE ename = 'TURNER') AND
			sal > (SELECT sal FROM emp WHERE ename = 'MILLER') AND
			sal > (SELECT sal FROM emp WHERE ename = 'CLARK');
-- eta korle correct dibe 
-- karon 3jon er ceyei boro salary pawa jabe
-- but syntax is too big here
-- alternate is 

SELECT *
FROM emp 
WHERE sal > ALL (SELECT sal FROM emp
								 WHERE ename IN ('TURNER', 'MILLER', 'CLARK')); 
--eta korle same kaj tai hobe 


-- select those emp who get more salary
-- than the lowest salary amoung turner, miller, clark
SELECT * 
FROM emp
WHERE sal > (SELECT sal FROM emp WHERE ename = 'TURNER') OR
			sal > (SELECT sal FROM emp WHERE ename = 'MILLER') OR
			sal > (SELECT sal FROM emp WHERE ename = 'CLARK');
-- eta korle correct dibe 
-- but syntax is too big here
-- alternate is

SELECT *
FROM emp 
WHERE sal > ANY (SELECT sal FROM emp
								 WHERE ename IN ('TURNER', 'MILLER', 'CLARK')); 
--eta korle same kaj tai hobe 



