use GIBDD


CREATE TABLE Car(ID_car INT PRIMARY KEY,
					Brand CHAR(30),
					Color CHAR(30),
					Theft INT,
					DataSee DATETIME
					)

CREATE TABLE Guy(ID_guy INT PRIMARY KEY,
					CarNum INT FOREIGN KEY REFERENCES Car(ID_car),
					FIO CHAR(30),
					Addr CHAR(30),
					DocNum INT
					)

CREATE TABLE TypeV(ID_t INT PRIMARY KEY,
					NameT CHAR(30),
					Fine MONEY
					)

CREATE TABLE Violation(ID_v INT PRIMARY KEY,
					CarNum INT FOREIGN KEY REFERENCES Car(ID_car),
					idt INT FOREIGN KEY REFERENCES TypeV(ID_t),
					DataV DATETIME,
					)

