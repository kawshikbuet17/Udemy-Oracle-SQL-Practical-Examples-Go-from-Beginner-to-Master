DECODE ar CODE 
-- if else er moto 
-- if er moto na 
-- ekadhik 

SELECT * FROM emp;

SELECT ename,job, sal, comm, sal+(case WHEN sal<=1000 then 100
WHEN comm is not null then 200
when job = 'MANAGER' then 300
else 0 END) as newsal
FROM emp;


SELECT ename, job, sal, sal+DECODE(job, 'MANAGER', 300,
'ANALYST',200, 'CLERK', 100, 0) as newsal;
FROM emp;

--Slide er problem 
SELECT ename, job, sal, sal+DECODE(sign(sal-3000), 1, 0,
                            DECODE(sign(sal-2450), 1, 100,                           DECODE(sign(sal-1500), 1, 200, 300))) as newsal 
FROM emp;
--sign(sal-3000) positive hole return 1, neg hole return -1
--same jinis CASE diyeo kora jay 

SELECT ename, job, sal, sal+ (CASE WHEN sal <= 1500 THEN 300                                   WHEN sal <= 2450 THEN 200
																	WHEN sal <= 3000 THEN 100
																	else 0 END) as newsal

FROM emp;
