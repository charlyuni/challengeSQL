
# Challenge SQL

Explanation of the query:

We select the fields u.name and u.email from the "users" table.
We calculate the sum of the prices of the products multiplied by the quantity of each order (p.price * o.quantity) and name it "total_spent".
We perform a join between the "users", "orders", and "products" tables using the corresponding keys (u.id = o.user_id and o.product_id = p.id) to retrieve the necessary information.
We filter only the rows where the product category is 'Electronics'.
We group the results by u.id, u.name, and u.email to ensure that each user appears only once in the final result.
We use the HAVING clause to filter only the users who have made at least 3 orders and whose total spending is more than 1000.
We sort the results in descending order based on the "total_spent" field.
This query should return the list of users who meet the specified criteria, displaying their name, email, and the total amount they have spent on "Electronics" orders, sorted by the total amount spent in descending order.

## Authors

- [@charlyActis](https://www.linkedin.com/in/carlosactis/)

