SELECT E.ID

FROM ECOLI_DATA E
JOIN ECOLI_DATA D
ON E.PARENT_ID = D.ID -- ID = 345678
JOIN ECOLI_DATA C
ON D.PARENT_ID = C.ID-- ID 678
WHERE C.PARENT_ID IS NULL
ORDER BY E.ID ASC




