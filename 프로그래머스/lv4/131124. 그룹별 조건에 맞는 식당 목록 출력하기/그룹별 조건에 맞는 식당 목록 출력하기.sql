SELECT p.MEMBER_NAME, r.REVIEW_TEXT, DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE p JOIN REST_REVIEW r on p.MEMBER_ID = r.MEMBER_ID
WHERE p.MEMBER_ID = (
                    SELECT MEMBER_ID
                    FROM REST_REVIEW
                    GROUP BY MEMBER_ID
                    ORDER BY count(*) DESC
                    LIMIT 1)
ORDER BY 3,2