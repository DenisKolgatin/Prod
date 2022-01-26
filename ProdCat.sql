CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Война и мир'),
	(2, 'Гордость и предубеждение'),
	(3, 'Шерлок холмс'),
	(4, 'Донцова'),
	(5, 'Преступление и наказание'),
	(6, 'Государство');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'Роман'),
	(2, 'Детектив'),
	(3, 'Философия');

CREATE TABLE ProductCategories (
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategories
VALUES
	(1, 1),
	(1, 3),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 1);

SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProductCategories PC
	ON P.Id = PC.ProductId
LEFT JOIN Categories C
	ON PC.CategoryId = C.Id;

