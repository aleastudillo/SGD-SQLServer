CREATE TABLE CLIENTE(
idcliente int not null primary key,
nombre varchar(30) not null

);

CREATE TABLE PRODUCTO(
idproducto int not null primary key,
nombre varchar(30) not null
);

CREATE TABLE FACTURA(
idfactura int not null primary key,
idcliente int not null,
total real not null,
fecha date,
CONSTRAINT cliente_factura_fk FOREIGN KEY(idcliente)
REFERENCES CLIENTE (idcliente) 
);

CREATE TABLE FACTURA_LINE(
id int IDENTITY not null primary key,
idfactura int not null,
idproducto int not null,
cantidad int not null,
precio real not null,
CONSTRAINT factura_factura_line_fk FOREIGN KEY(idfactura)
REFERENCES FACTURA (idfactura),

CONSTRAINT producto_factura_line_fk FOREIGN KEY(idproducto)
REFERENCES PRODUCTO (idproducto)
);

INSERT INTO Cliente(idcliente, nombre) VALUES(1, 'MARTHA ZAMANO');
INSERT INTO CLIENTE(idcliente, nombre) VALUES(2, 'PIPE BUENO');
INSERT INTO CLIENTE(idcliente, nombre) VALUES(3, 'JOHNNY PIJIJO');

INSERT INTO PRODUCTO(idproducto, nombre) VALUES(1, 'PRODUCTO 1');
INSERT INTO PRODUCTO(idproducto, nombre) VALUES(2, 'PRODUCTO 2');
INSERT INTO PRODUCTO(idproducto, nombre) VALUES(3, 'PRODUCTO 3');
INSERT INTO PRODUCTO(idproducto, nombre) VALUES(4, 'PRODUCTO 4');

INSERT INTO FACTURA(idfactura, idcliente, total) VALUES (1, '1', 20);
INSERT INTO FACTURA(idfactura, idcliente, total) VALUES (2, '3', 30);
INSERT INTO FACTURA(idfactura, idcliente, total) VALUES (3, '3', 40);
INSERT INTO FACTURA(idfactura, idcliente, total) VALUES (4, '3', 50);

INSERT INTO FACTURA_LINE(idfactura, idproducto, cantidad, precio) VALUES ('1', '1', 1, 20);
INSERT INTO FACTURA_LINE(idfactura, idproducto, cantidad, precio) VALUES ('2', '2', 2, 15);
INSERT INTO FACTURA_LINE(idfactura, idproducto, cantidad, precio) VALUES ('3', '4', 2, 10);
INSERT INTO FACTURA_LINE(idfactura, idproducto, cantidad, precio) VALUES ('3', '2', 1, 20);
INSERT INTO FACTURA_LINE(idfactura, idproducto, cantidad, precio) VALUES ('4', '3', 1, 50);