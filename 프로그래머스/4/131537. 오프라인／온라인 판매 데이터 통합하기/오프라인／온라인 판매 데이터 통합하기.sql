SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') AS SALES_DATE
        ,PRODUCT_ID
        ,USER_ID
        ,SALES_AMOUNT
FROM ONLINE_SALE
WHERE MONTH(SALES_DATE) = 3
UNION
SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') AS SALES_DATE
        ,PRODUCT_ID
        ,NULL AS USER_ID
        ,SALES_AMOUNT
FROM OFFLINE_SALE
WHERE MONTH(SALES_DATE) = 3

order by SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC


           
**UNION

-하나의 ORDER BY만 사용할 수 있다.
-각 SELECT의 열수, 표현식가 같아야 한다.
-SELECT 문들 끼리 순서는 상관없다.
-유니온을 한 결과가 중복되면 하나만 나온다. (DEFAULT)
-열의 타입은 같거나 반환 가능한 형태여야 한다.
-중복값을 나타내고 싶다면 UNION ALL
