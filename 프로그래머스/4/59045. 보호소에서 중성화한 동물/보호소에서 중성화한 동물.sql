-- 코드를 입력하세요
SELECT I.ANIMAL_ID
        ,I.ANIMAL_TYPE	
        ,I.NAME
FROM ANIMAL_INS I
JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.SEX_UPON_OUTCOME IN('Neutered Male','Spayed Female')  AND I.SEX_UPON_INTAKE LIKE '%Intact%'
ORDER BY I.ANIMAL_ID ASC