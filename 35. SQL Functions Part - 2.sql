SELECT TO_CHAR(SYSDATE, 'Day')
FROM dual;
-- Friday

SELECT TO_CHAR(SYSDATE, 'DAY')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'day')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'w')
FROM dual;
-- month er kototomo week 

SELECT TO_CHAR(SYSDATE, 'ww')
FROM dual;
--year er kototomo week 

SELECT TO_CHAR(SYSDATE, 'www')
FROM dual;
-- ww er ans er sathe w er ans 
-- jemon ww=35, w=6 hole www = 356

SELECT TO_CHAR(SYSDATE, 'd')
FROM dual;
-- th day of the weak

SELECT TO_CHAR(SYSDATE, 'dd')
FROM dual;
-- th day of the month

SELECT TO_CHAR(SYSDATE, 'ddd')
FROM dual;
-- th day of the year 
-- dddd dile ddd and d pasapasi bosaye dibe 
-- means ddd = 171, d = 5 hole dddd = 1715 hobe 

SELECT TO_CHAR(SYSDATE, 'dd Month yyyy')
FROM dual;
-- 19 June <boro space> 2020
-- karon sobceye boro size er month er jayga ta nibe 
-- solution: 

SELECT TO_CHAR(SYSDATE, 'ddfm Month yyyy')
FROM dual;
-- fm dile month otirikto jayga nibe na 

SELECT TO_CHAR(SYSDATE, 'ddthfm Month yyyy')
FROM dual;
-- 29th August 2019

SELECT TO_CHAR(SYSDATE, 'Ddspthfm Month yyyy')
FROM dual;
-- Nineteenth June 2020 


-- Julian Day / Julian Number 
-- pc/phone/clock Julian Day akare date mone rakhe 
-- Julius Ceaser related kono ekta hisab onusare 
-- jei date amra dekhi, seta amader bojhar jonno
SELECT TO_CHAR(SYSDATE, 'j')
FROM dual;


-- TO_DATE(ch, fmt)

SELECT to_date('11-DEC-1998', 'dd-MON-YYYY hh24:mi:ss')
FROM dual;
-- eta dile  hh24:mi:ss gula 00:00:00 dekhabe 
-- solution :

SELECT to_date('11-DEC-1998 18:23:30', 'dd-MON-YYYY hh24:mi:ss')
FROM dual;


-- spell the number 2435678
SELECT to_char(to_date('2435678', 'j'), 'jsp')
FROM dual;
-- julian date banate hbe 
-- then date ta spell korte hobe 
-- julian date direct num hisabe hoy, tai 
-- this is a technique to spell numbers 


--SQRT(n)
SELECT SQRT(49)
FROM dual;


SELECT POWER(5, 3)
FROM dual;
-- 5^3 

SELECT POWER(5, -3)
FROM dual;


SELECT SIGN(5 - 7)
FROM dual;
-- (5-7) = -2, sign = -1

SELECT ROUND(123456.745)
FROM dual;
-- ROUND(n) dile decimal point er pore kichu nibei na 

SELECT ROUND(123456.745, 2)
FROM dual;
