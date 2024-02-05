-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/98h1Yj
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Features_table" (
    "ID" VARCHAR   NOT NULL,
    "Store" INT   NOT NULL,
    "Date" VARCHAR   NOT NULL,
    "Temperature_Fahrenheit" DECIMAL   NOT NULL,
    "Fuel_Price_USD" DECIMAL   NOT NULL,
    "Consumer_Price_Index_CPI" DECIMAL   NOT NULL,
    "Unemployment_percentage" DECIMAL   NOT NULL,
    "Size_Sqft" INT   NOT NULL,
    CONSTRAINT "pk_Features_table" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Stores_Data_table" (
    "ID" VARCHAR   NOT NULL,
    "Store" INT   NOT NULL,
    "Dept" INT   NOT NULL,
    "Date" VARCHAR   NOT NULL,
    "Weekly_Sales_USD" DECIMAL   NOT NULL,
    "IsHoliday" BOOL   NOT NULL
);

ALTER TABLE "Stores_Data_table" ADD CONSTRAINT "fk_Stores_Data_table_ID" FOREIGN KEY("ID")
REFERENCES "Features_table" ("ID");

