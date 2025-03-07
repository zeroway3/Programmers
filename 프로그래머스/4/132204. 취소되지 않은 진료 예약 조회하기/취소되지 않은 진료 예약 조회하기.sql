SELECT A.APNT_NO,
       P.PT_NAME,
       P.PT_NO,
       A.MCDP_CD,
       D.DR_NAME,
       A.APNT_YMD
FROM APPOINTMENT A
JOIN PATIENT P
ON A.PT_NO = P.PT_NO
JOIN DOCTOR D
ON A.MDDR_ID = D.DR_ID
WHERE A.MCDP_CD = 'CS'
  AND A.APNT_CNCL_YN = 'N'
  AND DATE(A.APNT_YMD) = '2022-04-13'
ORDER BY A.APNT_YMD ASC;


** 3개 이상의 테이블 조인

\\메인 테이블을 잡고 조인절에는 ,는 따로 쓰지 않는다.
