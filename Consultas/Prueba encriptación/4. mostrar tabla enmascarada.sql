USE sql_hr;

SELECT 
	id,
    nombre,
    mask_account(cuenta) AS "Correo Enmascarado", 
    CAST(AES_DECRYPT(contraseña, '1234') AS CHAR) AS "Contraseña",
    CASE 
		WHEN AES_DECRYPT(contraseña, '1234') IS NULL THEN 'Contraseña Encriptada'
        WHEN VALIDATE_PASSWORD_STRENGTH(contraseña) <= 50 THEN 'Baja'
        WHEN VALIDATE_PASSWORD_STRENGTH(contraseña) = 75 THEN 'Media'
        WHEN VALIDATE_PASSWORD_STRENGTH(contraseña) = 100 THEN 'Alta'
        ELSE 'Error'
    END AS "Seguridad Contraseña"

FROM redes_empleados
    