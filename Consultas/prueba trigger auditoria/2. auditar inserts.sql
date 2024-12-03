USE sql_invoicing;

DELIMITER $$
DROP TRIGGER IF EXISTS auditar_INSERT;

CREATE TRIGGER auditar_INSERT
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payment_audit
    VALUES(NEW.client_id, NEW.date, NEW.amount, "INSERT", NOW());
END $$