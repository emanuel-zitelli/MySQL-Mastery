INSERT INTO redes_empleados (nombre, apellido, cuenta, contraseña)
VALUES (
    'Alan', 
    'Pérez', 
    'alanperez@gmail.com', 
    AES_ENCRYPT('moxit2024', '1234')
);

INSERT INTO redes_empleados (nombre, apellido, cuenta, contraseña)
VALUES (
    'Micaela', 
    'Rodriguez', 
    'micaa123@gmail.com', 
    AES_ENCRYPT('alan', '5678')
);