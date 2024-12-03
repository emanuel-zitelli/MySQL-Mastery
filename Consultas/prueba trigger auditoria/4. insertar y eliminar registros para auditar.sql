USE sql_invoicing;

 
INSERT INTO payments(payment_id, client_id, invoice_id, date, amount, payment_method)
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1);

INSERT INTO payments
VALUES (DEFAULT, 2, 2, '2019-07-6', 20, 2);

INSERT INTO payments
VALUES (DEFAULT, 2, 2, '1990-01-1', 20, 2);

DELETE FROM payments
WHERE date < '2000-01-01'


