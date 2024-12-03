USE sql_hr;

SELECT e.first_name,
		e.last_name,
        e.job_title,
        CONCAT(o.address, ", ", o.city) AS Office
        
FROM employees e

JOIN offices o
	ON e.office_id = o.office_id