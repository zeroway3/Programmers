SELECT E.ID

FROM ECOLI_DATA E
JOIN ECOLI_DATA D
ON E.PARENT_ID = D.ID
JOIN ECOLI_DATA C
ON D.PARENT_ID = C.ID
WHERE C.PARENT_ID IS NULL
ORDER BY E.ID ASC