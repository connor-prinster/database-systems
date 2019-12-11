
drop table if exists shipment;
drop table if exists supplier;
drop table if exists supplies;
drop table if exists part;

CREATE TABLE supplier (SupplierName VARCHAR(70) primary key, City INTEGER);
CREATE TABLE part (PartName VARCHAR(70) primary key, Color VARCHAR(70), WEIGHT INTEGER);
CREATE TABLE shipment (SupplierName VARCHAR(70), PartName VARCHAR(70), dater integer, primary key (supplierName, partName));
alter table shipment add constraint fk3 FOREIGN KEY (supplierName) REFERENCES supplier(supplierName);
alter table shipment add constraint fk4 FOREIGN KEY (partName) REFERENCES part(partName);

INSERT INTO supplier VALUES ('Bobs', 1);
INSERT INTO supplier VALUES ('Rons', 2);
INSERT INTO supplier VALUES ('Heyas', 2);
INSERT INTO supplier VALUES ('Anotha', 2);

INSERT INTO part values ('red', 'red', 100);
INSERT INTO part values ('lolz', 'black', 10);
INSERT INTO part values ('bumz', 'purple', 150);
INSERT INTO part values ('butthole', 'purple', 150);

INSERT INTO shipment values('Bobs', 'lolz', 2);
INSERT INTO shipment values('Bobs', 'bumz', 3);
INSERT INTO shipment values('Rons', 'lolz', 5);
INSERT INTO shipment values('Heyas', 'lolz', 7);
INSERT INTO shipment values('Heyas', 'bumz', 8);
INSERT INTO shipment values('Anotha', 'bumz', 6);  

INSERT INTO shipment values('Bobs', 'red', 1);
INSERT INTO shipment values('Heyas', 'red', 6); 
-- INSERT INTO shipment values('Anotha', 'red', 6); 
INSERT INTO shipment values('Rons', 'red', 6); 


