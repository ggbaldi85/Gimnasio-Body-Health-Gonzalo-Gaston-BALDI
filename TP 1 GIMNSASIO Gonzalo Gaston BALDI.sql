
CREATE TABLE Plan (
id_plan INT PRIMARY KEY AUTO_INCREMENT,
nombre_plan VARCHAR(50) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
duracion_meses INT NOT NULL
);


CREATE TABLE Socio (
id_socio INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
dni VARCHAR(50) NOT NULL,
email VARCHAR(100),
telefono VARCHAR(20),
id_plan INT,
FOREIGN KEY (id_plan) REFERENCES Plan(id_plan)
);


CREATE TABLE Clase (
id_clase INT PRIMARY KEY AUTO_INCREMENT,
nombre_clase VARCHAR(50) NOT NULL,
horario TIME NOT NULL,
profesor VARCHAR(50)
);


CREATE TABLE Inscripcion (
id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
id_socio INT NOT NULL,
id_clase INT NOT NULL,
fecha_inscripcion DATE NOT NULL,
FOREIGN KEY (id_socio) REFERENCES Socio(id_socio),
FOREIGN KEY (id_clase) REFERENCES Clase(id_clase)
);


CREATE TABLE Pago (
id_pago INT PRIMARY KEY AUTO_INCREMENT,
id_socio INT NOT NULL,
id_plan INT NOT NULL,
monto DECIMAL(10,2) NOT NULL,
fecha_pago DATE NOT NULL,
FOREIGN KEY (id_socio) REFERENCES Socio(id_socio),
FOREIGN KEY (id_plan) REFERENCES Plan(id_plan)
);