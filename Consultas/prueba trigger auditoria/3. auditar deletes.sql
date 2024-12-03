USE sql_invoicing;

DELIMITER $$
DROP TRIGGER IF EXISTS auditar_DELETE;

CREATE TRIGGER auditar_DELETE
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    
    INSERT INTO payment_audit
    VALUES(OLD.client_id, OLD.date, OLD.amount, "DELETE", NOW());
END $$