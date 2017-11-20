USE SIGMA;

CREATE TABLE Users (
    employee_Id VARCHAR(10) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    pass VARCHAR(30) NOT NULL,
    posicion VARCHAR(10) NOT NULL CHECK (posicion IN ('Cajero', 'Gerente', 'Director')),
    CONSTRAINT employee_Id PRIMARY KEY (employee_Id)
);


CREATE TABLE CoolRoom(
	coolroom_serial NUMERIC(15) NOT NULL,
    CONSTRAINT coolroom_serial PRIMARY KEY (coolroom_serial)
);

CREATE TABLE Sensors(
	id INT(10) NOT NULL AUTO_INCREMENT,
    coolroom_serial NUMERIC(15) NOT NULL,
    sensor VARCHAR(20) NOT NULL CHECK (sensor IN ('Temperature', 'Humidity', 'Current')),
    sensor_value NUMERIC(10) NOT NULL,
    sensor_date datetime(6) NOT NULL,
    CONSTRAINT pk_id PRIMARY KEY (id)
);


