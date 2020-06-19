-- DUAL nam er builtin table ache. 

-- TO_NUMBER(expr, fmt)
SELECT TO_NUMBER('$12,345,678', '$99,999,999')
FROM dual;

SELECT TO_NUMBER('$2,345,678', '$99,999,999')
FROM dual;
-- eikhane $99,999,999 format ta 1st tar full cover korte hbe 
-- that means $99,999 format diye $1,234,567 dewa jabena.
-- but format er limit boro hote pare 
-- btw, format means output format. not input format 


-- TO_CHAR(x)

SELECT TO_CHAR(12345678, '$99,999,999')
FROM dual;
-- eta dile output format onujayi $12,345,678 print hobe 

SELECT TO_CHAR(345678, '$99,999,999')
FROM dual;

-- to_char er somoy format er length kom hole 
-- error dibena, but output vul dibe 
-- btw, format er length $ chara count korte hobe 


SELECT TO_CHAR(SYSDATE)
FROM dual;
--default date fmt is DD-MON-YY 

SELECT TO_CHAR(SYSDATE, 'dd/mm/yyyy')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'dd/mm/yyyy hh24:mi:ss')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'dd/mm/yyyy hh:mi:ss')
FROM dual;