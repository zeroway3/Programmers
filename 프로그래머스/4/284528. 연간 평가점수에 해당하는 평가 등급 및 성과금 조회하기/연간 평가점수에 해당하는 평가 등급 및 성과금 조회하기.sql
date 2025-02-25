SELECT E.EMP_NO,
       E.EMP_NAME,
       CASE 
           WHEN AVG(G.SCORE) >= 96 THEN 'S'
           WHEN AVG(G.SCORE) >= 90 THEN 'A'
           WHEN AVG(G.SCORE) >= 80 THEN 'B'
           ELSE 'C'
       END AS GRADE,
       CASE 
           WHEN AVG(G.SCORE) >= 96 THEN ROUND(E.SAL * 0.2)
           WHEN AVG(G.SCORE) >= 90 THEN ROUND(E.SAL * 0.15)
           WHEN AVG(G.SCORE) >= 80 THEN ROUND(E.SAL * 0.1)
           ELSE 0
       END AS BONUS
FROM HR_EMPLOYEES E
JOIN HR_GRADE G
ON E.EMP_NO = G.EMP_NO

GROUP BY E.EMP_NO, E.EMP_NAME, E.SAL
ORDER BY E.EMP_NO;

**최적화 코드(서브쿼리)

SELECT E.EMP_NO,
       E.EMP_NAME,
       G.GRADE,
       CASE G.GRADE
           WHEN 'S' THEN ROUND(E.SAL * 0.2)
           WHEN 'A' THEN ROUND(E.SAL * 0.15)
           WHEN 'B' THEN ROUND(E.SAL * 0.1)
           ELSE 0
       END AS BONUS
FROM HR_EMPLOYEES E
JOIN (
    SELECT EMP_NO,
           CASE 
               WHEN AVG(SCORE) >= 96 THEN 'S'                                                                                                                                                                                                                                                                                
               WHEN AVG(SCORE) >= 90 THEN 'A'
               WHEN AVG(SCORE) >= 80 THEN 'B'
               ELSE 'C'
           END AS GRADE
    FROM HR_GRADE
    WHERE YEAR = 2022
    GROUP BY EMP_NO
) G
ON E.EMP_NO = G.EMP_NO
ORDER BY E.EMP_NO;
