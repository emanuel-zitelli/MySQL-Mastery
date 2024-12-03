USE sql_invoicing;

CREATE TABLE  payment_audit 
(
	client_id INT NOT NULL,
    date DATE NOT NULL,
    amount DECIMAL(9, 2),
    action_type VARCHAR(50),
    action_date DATETIME NOT NULL
)