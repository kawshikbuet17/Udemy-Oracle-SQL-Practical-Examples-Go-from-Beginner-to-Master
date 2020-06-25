-- SUBSTR(ch, pos, length)
-- SUBSTR(string, koto_theke_suru, kotogulo)
-- counting 1 theke suru, not 0 theke 

SELECT SUBSTR('abcdefghijk', 3, 5), SUBSTR('abcdefghijk', 3)
FROM dual;


-- list of emp with their name ending in ER 
SELECT * 
FROM emp 
WHERE SUBSTR(ename, -2) = 'ER';
-- last character ke -1 lekha hoy 
-- btw, what is scott schema (i.e. scott.emp)


-- INSTR(str, substr)
-- INSTR(str, substr, check_start_idx, k oto_tomo_occurance_chai)

SELECT INSTR('kawsKKPhik kumKKPar paKKPul', 'KKP'), INSTR('kawsKKPhik kumKKPar paKKPul', 'KKP', 1, 1), INSTR('kawsKKPhik kumKKPar paKKPul', 'KKP', 6, 2)
FROM dual;

-- jesob emp er name e LL ase tader k list koro 
SELECT *
FROM emp 
WHERE INSTR(UPPER(ename), 'LL')<>0; 
-- mane 0 er ceye besi occurance 


-- REPLACE(source, search_str, replace_str)
-- REPLACE(source, search_str) eta dile eliminate kore dibe
SELECT REPLACE('kawshik kawshik kawshik', 'wsh', 'KKP17'), REPLACE('kawshik kawshik kawshik', 'wsh')
FROM dual;


-- TRANSLATE(expr, from_str, to_str)
SELECT TRANSLATE('hzalz', 'abcdefghijklmnopqrstuvwxyz', 'bcdefghijklmnopqrstuvwxyz')
FROM dual; 
-- eikhane mapping korle h->i, a->b, l->m , z->none 
-- so ans is ibm 
-- jodi amon kichu thake jeta map er input e nai,
-- seta direct bose jabe 
-- jemon eikhane 9 nai map er vitor 
SELECT TRANSLATE('9hal', 'abcdefghijklmnopqrstuvwxyz', 'bcdefghijklmnopqrstuvwxyz')
FROM dual;
-- output 9ibm








