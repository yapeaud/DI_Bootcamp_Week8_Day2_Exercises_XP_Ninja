SELECT first_name, last_name FROM customers ORDER BY last_name DESC LIMIT 2;

DELETE FROM purchases WHERE customer_id = (SELECT id FROM customers WHERE first_name = 'Scott');

SELECT c.first_name, c.last_name, i.name, p.quantity_purchased FROM purchases p LEFT JOIN customers c ON p.customer_id = c.id LEFT JOIN items i ON p.item_id = i.id;

SELECT c.first_name, c.last_name, i.name, p.quantity_purchased FROM purchases p INNER JOIN customers c ON p.customer_id = c.id AND c.first_name != 'Scott' INNER JOIN items i ON p.item_id = i.id;