SELECT name, (SELECT MAX(price) FROM Product) FROM Product;

SELECT name FROM Product p WHERE price > (SELECT AVG(price) FROM Product WHERE category_id = p.category_id);

SELECT * FROM Customer WHERE customer_id IN (SELECT customer_id FROM `Order`);

SELECT * FROM Category WHERE EXISTS (SELECT 1 FROM Product WHERE Product.category_id = Category.category_id);

SELECT * FROM Customer WHERE customer_id = (SELECT MIN(customer_id) FROM Customer);