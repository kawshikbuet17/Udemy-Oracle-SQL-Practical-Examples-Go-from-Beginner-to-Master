SELECT MONTHS_BETWEEN(SYSDATE, to_date('15-DEC-2019'))
FROM dual;
-- ans = 6.34696871266427718040621266427718040621

SELECT MONTHS_BETWEEN(trunc(SYSDATE), trunc(to_date('15-DEC-2019')))
FROM dual;
-- ans = 6.32258064516129032258064516129032258065

SELECT ADD_MONTHS(SYSDATE, 3.25), ADD_MONTHS(SYSDATE, 3), ADD_MONTHS(SYSDATE, -3.25)
FROM dual;
-- ans = 2020-09-25 18:15:06, today is 2020-06-25
-- minus dile 3 month backward hbe
-- functional part nibe na. so 3.25 = 3 er moto kaj korbe 

SELECT NEXT_DAY(SYSDATE, 'saturday'), NEXT_DAY(SYSDATE, 'thursday')
FROM dual;  
-- sysdate er next saturday kobe eta show korbe. 
-- 25 tarikh ajk. thursday. so ans is 27 tarikh 

SELECT NEXT_DAY(SYSDATE, 1), NEXT_DAY(SYSDATE, 6)
FROM dual;
-- sunday=1,..... friday=6
-- (sysdate, 1) next sunday koy tarikh e 
-- NEXT_DAY(date, ch) func minus e kaj korbena 


SELECT LAST_DAY(SYSDATE), LAST_DAY('15-JAN-2050')
FROM dual;
-- last date of month 


-- TRANSLATE(expr, from_str, to_str)
-- ei func use kore onek type er invalid character 
-- identify kora jay 
-- such as 
SELECT * 
FROM emp
WHERE TRANSLATE(upper(ename), '@ABCDEFGHIJKLMNOPQRSTUVWXYZ', '@') is not null;
--evabe invalid name identify kora jay 
--ei command dile invalid nam gulai print hobe 





