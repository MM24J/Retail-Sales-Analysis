DROP TABLE Features_table;

CREATE TABLE Features_table (
    ID VARCHAR NOT NULL,
	Store INT NOT NULL,
    Date VARCHAR NOT NULL,
    Temperature_Fahrenheit DECIMAL,
    Fuel_Price_USD DECIMAL,
    Consumer_Price_Index_CPI DECIMAL NOT NULL,
    Unemployment_percentage DECIMAL NOT NULL,
    Size_Sqft INT NOT NULL,
    PRIMARY KEY (ID)
);

SELECT *
FROM Features_table;

DROP TABLE Features_table;

DROP TABLE Stores_Data_table;

CREATE TABLE Stores_Data_table (
	ID VARCHAR REFERENCES Features_table(ID),
	Store INT NOT NULL,
	Dept VARCHAR NOT NULL,
	Date DATE NOT NULL,
	Weekly_Sales_USD DECIMAL,
	IsHolidAy VARCHAR (255)
);

SELECT *
FROM Stores_Data_table;


