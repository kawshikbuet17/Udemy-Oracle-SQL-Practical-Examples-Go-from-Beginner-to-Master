-- same dept e kaj kore and 
-- jader salary WARD nam er karo salary er equal
-- show them

SELECT *
FROM emp e1
WHERE sal = (	SELECT sal
							FROM emp e2
							WHERE e2.deptno = e1.deptno 
							AND ename = 'WARD'
						)

-- N.B WARD nijeo tader ekjon. tai okeo show korbe 
							