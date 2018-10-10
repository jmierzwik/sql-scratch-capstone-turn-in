Question 1:

SELECT *
FROM survey
LIMIT 10;


Question 2:

SELECT question,
COUNT(DISTINCT user_id)
FROM survey
GROUP BY 1;


Question 3:

(table in presentation)


Question 4:

SELECT *
FROM quiz
LIMIT 5;

SELECT *
FROM home_try_on
LIMIT 5;

SELECT *
FROM purchase
LIMIT 5;


Questions 5:

SELECT q.user_id,
CASE WHEN
(h.user_id IS NOT NULL)
THEN 'True'
ELSE 0
END AS 'is_home_try_on',
h.number_of_pairs,
CASE WHEN
(p.product_id IS NOT NULL)
THEN 'True'
ELSE 0
END AS 'is_purchase'
FROM quiz AS 'q'
LEFT JOIN home_try_on AS 'h'
ON q.user_id = h.user_id
LEFT JOIN purchase AS 'p'
ON h.user_id = p.user_id
LIMIT 10;


Question 6:

SELECT h.number_of_pairs, AS ‘pairs’,
COUNT(DISTINCT q.user_id) AS ‘quiz_takers’,
COUNT(DISTINCT h.user_id) AS 'home_tryons',
COUNT(DISTINCT p.user_id) AS 'purchases'
FROM quiz as 'q'
LEFT JOIN home_try_on as 'h'
ON q.user_id = h.user_id
LEFT JOIN purchase AS 'p'
ON h.user_id = p.user_id
GROUP BY 1;
