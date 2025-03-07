SELECT COUNT(FISH_TYPE) AS FISH_COUNT
        ,MAX(LENGTH) AS MAX_LENGTH
        ,FISH_TYPE
FROM FISH_INFO

GROUP BY FISH_TYPE
HAVING AVG(IFNULL(LENGTH,'10'))>=33

ORDER BY FISH_TYPE ASC

**다른 조건들은 쉽게 구했지만 GROUP BY HAVING 절에 IFNULL조건 넣는 것을 모르고 헤맨 문제
