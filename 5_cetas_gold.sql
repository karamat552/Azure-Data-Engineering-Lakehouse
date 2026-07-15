

--------------------------------------------------------
-- 1. CETAS FOR CALENDAR
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_calendar
WITH (
    LOCATION = 'ext_calendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.calendar;
GO

--------------------------------------------------------
-- 2. CETAS FOR CUSTOMERS
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_customers
WITH (
    LOCATION = 'ext_customers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.customers;
GO

--------------------------------------------------------
-- 3. CETAS FOR PRODUCTS
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_products
WITH (
    LOCATION = 'ext_products',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.products;
GO

--------------------------------------------------------
-- 4. CETAS FOR RETURNS
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_returns
WITH (
    LOCATION = 'ext_returns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.returns;
GO

--------------------------------------------------------
-- 5. CETAS FOR SALES
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_sales
WITH (
    LOCATION = 'ext_sales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.sales;
GO

--------------------------------------------------------
-- 6. CETAS FOR SUBCATEGORIES
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_subcategories
WITH (
    LOCATION = 'ext_subcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.subcategories;
GO

--------------------------------------------------------
-- 7. CETAS FOR CATEGORIES (Your Bonus Table!)
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_categories
WITH (
    LOCATION = 'ext_categories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.categories;
GO

--------------------------------------------------------
-- 8. CETAS FOR TERRITORIES
--------------------------------------------------------
CREATE EXTERNAL TABLE gold.ext_territories
WITH (
    LOCATION = 'ext_territories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS 
SELECT * FROM gold.territories;
