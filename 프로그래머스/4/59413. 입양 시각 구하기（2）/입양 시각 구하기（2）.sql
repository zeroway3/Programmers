WITH RECURSIVE hours AS (
    SELECT 0 AS HOUR -- 재귀 초기값
    UNION ALL -- 반드시 UNION 함수 사용
    SELECT HOUR + 1 -- 재귀
    FROM hours
    WHERE HOUR < 23 --- 재귀 정지 조건
)

SELECT h.HOUR
        ,IFNULL(COUNT(a.DATETIME), 0) AS COUNT
FROM hours h
LEFT JOIN ANIMAL_OUTS a
ON h.HOUR = HOUR(a.DATETIME)
GROUP BY h.HOUR
ORDER BY h.HOUR;

** 기본 재귀-쿼리
    
with recursive rc as ( -- RECURSIVE 재귀-쿼리문
select 1 as h -- 재귀 초기값
union all -- -- 반드시 UNION 함수 사용
select h + 1 -- 재귀
from rc 
where h < 5 -- 재귀 정지 조건
)

select * from rc
