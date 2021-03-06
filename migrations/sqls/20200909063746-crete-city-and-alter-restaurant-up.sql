CREATE TABLE city (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	countryID INT NULL DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO city(name) VALUES('Banja Luka');
ALTER TABLE restaurant DROP COLUMN IF EXISTS city;
ALTER TABLE restaurant ADD COLUMN cityID INT NOT NULL AFTER name;
UPDATE restaurant SET cityID = 1;
ALTER TABLE restaurant ADD CONSTRAINT FK_Restaurant_City FOREIGN KEY (cityID) REFERENCES city(id) ON UPDATE CASCADE ON DELETE CASCADE;