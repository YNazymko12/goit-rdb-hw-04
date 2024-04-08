USE mydb;

SELECT COUNT(*) AS row_count FROM order_details

INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id;


SELECT COUNT(*) AS row_count FROM order_details
LEFT JOIN orders ON orders.id = order_details.order_id
LEFT JOIN customers ON customers.id = orders.customer_id
LEFT JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
LEFT JOIN shippers ON shippers.id = orders.shipper_id
LEFT JOIN suppliers ON suppliers.id = products.supplier_id;


SELECT COUNT(*) AS row_count FROM order_details
INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE orders.employee_id > 3 AND orders.employee_id <= 10;


SELECT categories.name, COUNT(*) AS total_row,
AVG(order_details.quantity) AS avg_quantity
 FROM order_details
INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE orders.employee_id > 3 AND orders.employee_id <= 10
GROUP BY categories.name;



SELECT categories.name, COUNT(*) AS total_row,
AVG(order_details.quantity) AS avg_quantity
 FROM order_details
INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE orders.employee_id > 3 AND orders.employee_id <= 10
GROUP BY categories.name
HAVING avg_quantity > 21;



SELECT categories.name, COUNT(*) AS total_row,
AVG(order_details.quantity) AS avg_quantity
 FROM order_details
INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE orders.employee_id > 3 AND orders.employee_id <= 10
GROUP BY categories.name
HAVING avg_quantity > 21
ORDER BY total_row DESC;



SELECT categories.name, COUNT(*) AS total_row,
AVG(order_details.quantity) AS avg_quantity
 FROM order_details
INNER JOIN orders ON orders.id = order_details.order_id
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN products ON products.id = order_details.product_id
INNER JOIN categories ON categories.id = products.category_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE orders.employee_id > 3 AND orders.employee_id <= 10
GROUP BY categories.name
HAVING avg_quantity > 21
ORDER BY total_row DESC
LIMIT 4 OFFSET 1;

