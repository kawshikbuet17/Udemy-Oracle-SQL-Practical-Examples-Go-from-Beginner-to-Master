-- self join means :
-- joining the table to itseld using self referencing column 

SELECT * FROM emp;
-- select those emp as emp along with manager name (eki table ei ase info, manager er empno ase mgr column e)

SELECT e.ename as employee, m.ename as manager
FROM emp e, emp m
WHERE e.mgr = m.empno;

