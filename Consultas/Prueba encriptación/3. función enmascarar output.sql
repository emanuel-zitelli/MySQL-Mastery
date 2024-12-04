DELIMITER $$

CREATE FUNCTION mask_account(account VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE masked_account VARCHAR(255);
    DECLARE at_index INT;

    -- Detectar la posición del arroba
    SET at_index = LOCATE('@', account);

    -- Si se encuentra un arroba, censurar todo menos las primeras 3 letras y la parte después del arroba
    IF at_index > 0 THEN
        SET masked_account = CONCAT(
            LEFT(account, 3),                     -- Primeros 3 caracteres
            REPEAT('X', at_index - 3),            -- Sustituir con 'X' hasta el arroba
            SUBSTRING(account, at_index)          -- Mantener desde el arroba en adelante
        );
    ELSE
        -- Si no tiene arroba, censurar todo con 'X'
        SET masked_account = REPEAT('X', CHAR_LENGTH(account));
    END IF;

    RETURN masked_account;
END$$

DELIMITER ;