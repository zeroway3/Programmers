WITH MAX_PRICE AS (
    SELECT 
        CATEGORY,
        MAX(PRICE) AS MAX_PRICE
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
    GROUP BY CATEGORY
)

SELECT 
    F.CATEGORY,
    M.MAX_PRICE,
    F.PRODUCT_NAME
FROM FOOD_PRODUCT F
JOIN MAX_PRICE M
ON F.CATEGORY = M.CATEGORY AND F.PRICE = M.MAX_PRICE
WHERE F.CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY M.MAX_PRICE DESC;

**


**다른 풀이

SELECT CATEGORY,
       PRICE AS MAX_PRICE,
       PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY, PRICE) IN (
    SELECT CATEGORY, MAX(PRICE)
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
    GROUP BY CATEGORY
)
ORDER BY PRICE DESC;
