------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE OR ALTER VIEW gold.calendar
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE OR ALTER VIEW gold.customers
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE OR ALTER VIEW gold.products
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE OR ALTER VIEW gold.returns
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW SALES
------------------------
CREATE OR ALTER VIEW gold.sales
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW PRODUCT SUBCATEGORIES
------------------------
CREATE OR ALTER VIEW gold.subcategories
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW PRODUCT CATEGORIES
------------------------
CREATE OR ALTER VIEW gold.categories
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO

------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE OR ALTER VIEW gold.territories
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awdatalakestorage197.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUER1;
