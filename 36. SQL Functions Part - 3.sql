-- ROUND(n, int)
-- int = + tahole doshomik er por theke 
-- int = - tahole doshomik er left theke 
-- position = 987654321.123456..... 

SELECT round(123456.7453245, 2)
FROM dual;

SELECT round(123456.7453245, -1)
FROM dual;
-- 123460

SELECT round(123456.7453245, -2)
FROM dual;
-- 123500

SELECT trunc(123456.7453245, 2), round(123456.7453245, 2)
FROM dual;

SELECT trunc(123456.7453245, -2), round(123456.7453245, -2)
FROM dual;


-- round and trunc date 

SELECT trunc(SYSDATE), round(SYSDATE)
FROM dual;
-- time onujayi trunc/round korbe. 

SELECT trunc(SYSDATE, 'mm'), round(SYSDATE, 'mm')
FROM dual;
-- month onujayi trunc/round korbe 

SELECT ceil(3.000001)
FROM dual;
-- 4

SELECT floor(3.99999)
FROM dual;

SELECT mod(5, -2) 
FROM dual;
-- ans = 1

SELECT mod(-5, 2) 
FROM dual;
-- ans = -1

SELECT mod(-5, -2) 
FROM dual;
-- ans = -1

SELECT upper('abc'), lower('ABc')
FROM dual;

SELECT initcap('my name is kawshik')
FROM dual;
-- initcap sob word er prothom ta capital korbe

SELECT length('my name')
FROM dual;

SELECT reverse('my name is kawshik')
FROM dual;


SELECT lpad('abcdefgh', 10, '*')
FROM dual;
-- **abcdefgh, 10 ta jayga total, 
-- short porle left e * diye fillup 

SELECT lpad('abcdefg', 10, '#*')
FROM dual;
-- same, but #* diye fillup
-- total 10 ta jayjai nibe 

SELECT rpad('abcdefg', 10, '*')
FROM dual;
-- abcdefg***

SELECT lpad('abcdefg', 15)
FROM dual;
-- space diye fillup hobe kichu na dile 

SELECT lpad('abcdefg', 4, '*'),rpad('abcdefg', 4, '*')
FROM dual;
-- abcd 

SELECT LTRIM('abcdefghijabcijkl', 'bac'), LTRIM('abcdefghijabcijkl', 'abc')
FROM dual; 
-- left e 'abc'/'bac' jai dewa hok,
-- left e a/b/c er presence pelei kete dibe 
-- leftmost e na thakle katbe na 
-- left theke dekhte thakbe  
-- a/b/c pelei kete dibe. but 
-- moddhe a/b/c baad e onnokisu asle kata bondho
-- aabbcc erokom tana ekadhik presence o kete dibe 

SELECT LTRIM('abcdefghijabcijkl', 'dab'), LTRIM('a*bdefghijabcijkl', 'dab'), LTRIM('abbdefghijabcijkl', 'dab')
FROM dual; 
-- left theke dekhte thakbe 
-- d/a/b pelei kete dibe. 
-- d/a/b chara onno kichu asle 
-- kata bondho hoye jabe 

-- RTRIM(..., ...) diyeo same kaj kora jay 



