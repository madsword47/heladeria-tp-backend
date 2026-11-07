-- Aislamiento de persistencia: 1 contenedor PostgreSQL, 3 bases lógicas sin FKs cruzadas.
-- Se ejecuta una única vez, al inicializar el volumen de datos (docker-entrypoint-initdb.d).

CREATE DATABASE db_pedidos;
CREATE DATABASE db_camioneros;
CREATE DATABASE db_logistica;

GRANT ALL PRIVILEGES ON DATABASE db_pedidos TO admin;
GRANT ALL PRIVILEGES ON DATABASE db_camioneros TO admin;
GRANT ALL PRIVILEGES ON DATABASE db_logistica TO admin;
