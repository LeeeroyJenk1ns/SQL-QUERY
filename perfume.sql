CREATE TABLE Perfume (
	id iNT NOT NULL PRIMARY KEY,
	brand VARCHAR(50) NOT NULL
);

INSERT INTO Perfume
VALUES  (1, '1Million, PACO RABANNE'),
	(2, 'L''Eau par Kenzo pour Homme, KENZO'),
	(3, 'Gucci Bloom Acqua di Fiori'),
    (4, 'Black Orchid, Tom Ford');

CREATE TABLE Category (
	id iNT NOT NULL PRIMARY KEY,
	brandCategory VARCHAR(50) NOT NULL
);

INSERT INTO Category 
VALUES  (1, 'male'),
        (2, 'female');

CREATE TABLE PerfumeCategory (
	Perfume_id  INT NOT NULL FOREIGN KEY REFERENCES Perfume(id),
	Category_id INT NOT NULL FOREIGN KEY REFERENCES Category(id)
);

INSERT INTO PerfumeCategory
VALUES  (1, 1),
	(3, 2),
	(4, 1),
	(4, 2);

SELECT P.brand, C.brandCategory
FROM Perfume P
LEFT JOIN PerfumeCategory PC
	ON P.id = PC.Perfume_id
LEFT JOIN Category C
	ON PC.Category_id = C.id;