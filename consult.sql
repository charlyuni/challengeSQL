SELECT
  u.name,
  u.email,
  SUM(p.price * o.quantity) AS total_amount
FROM
  users u
  JOIN orders o ON u.id = o.user_id
  JOIN products p ON o.product_id = p.id
WHERE
  p.category = 'Electronics'
GROUP BY
  u.id
HAVING
  COUNT(DISTINCT o.id) >= 3
  AND SUM(p.price * o.quantity) > 1000
ORDER BY
  total_amount DESC;