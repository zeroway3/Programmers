SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME IN ('Milk', 'Yogurt')
GROUP BY CART_ID
HAVING COUNT(DISTINCT NAME) = 2
ORDER BY CART_ID;


**💡 쿼리 설명
  
장바구니 아이디(CART_ID)별로 그룹화합니다.
HAVING COUNT(DISTINCT NAME) = 2

하나의 장바구니에 Milk와 Yogurt가 모두 포함된 경우를 찾습니다.
DISTINCT를 사용하여 같은 상품이 여러 개 담겨 있어도 1개로 간주합니다.
ORDER BY CART_ID

장바구니 아이디 기준으로 오름차순 정렬합니다.
