-- 0. Create the Master Key (The Digital Safe)
-- You MUST run this first before creating credentials!
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'AStrongPassword123!';
GO

-- 1. Create the Database Scoped Credential
-- This tells Synapse to use its own secure 'Managed Identity' to access the Data Lake
CREATE DATABASE SCOPED CREDENTIAL aw_managed_identity
WITH IDENTITY = 'Managed Identity';
GO

-- 2. Create the External File Format
-- Telling Synapse that our data is saved as Parquet files
CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);
GO

-- 3. Create the External Data Source for the Silver Layer
-- This links your storage account URL to the credential we just made
CREATE EXTERNAL DATA SOURCE source_silver
WITH (
    LOCATION = 'https://awdatalakestorage197.dfs.core.windows.net/silver',
    CREDENTIAL = aw_managed_identity
);
GO

-- 4. Create the External Data Source for the Gold Layer
-- This creates a connection to your gold container (if you plan to write data there)
CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://awdatalakestorage197.dfs.core.windows.net/gold',
    CREDENTIAL = aw_managed_identity
);

