USE sql_hr;

CREATE TABLE redes_empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,        -- Identificador único para cada empleado
    nombre VARCHAR(50) NOT NULL,              -- Nombre del empleado
    apellido VARCHAR(50) NOT NULL,            -- Apellido del empleado
    cuenta VARCHAR(50) UNIQUE NOT NULL,       -- Nombre de usuario único para la cuenta
    contraseña VARBINARY(255) NOT NULL        -- Contraseña encriptada
);