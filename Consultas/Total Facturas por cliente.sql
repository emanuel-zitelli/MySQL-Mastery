USE sql_invoicing;

SELECT client_id AS "Cliente" , SUM(invoice_total) AS "Pago total de facturas"
FROM invoices

GROUP BY client_id
#HAVING sum(invoice_total) > 800