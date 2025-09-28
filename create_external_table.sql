-- Create Master Key
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '@YourSecurePassword';
-- the password can be anything here

-- Create Database Scoped Credential
CREATE DATABASE SCOPED CREDENTIAL cred_azure
WITH
    IDENTITY = 'Managed Identity';

-- External Data Source: silver and gold
CREATE EXTERNAL DATA SOURCE source_silver
WITH(
    LOCATION = '<DATA_LAKE_URL>/silver',
    CREDENTIAL = cred_azure
);

CREATE EXTERNAL DATA SOURCE source_gold
WITH(
    LOCATION = '<DATA_LAKE_URL>/gold',
    CREDENTIAL = cred_azure
);

-- External file format
CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

-- Create External Table: Extsales
CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS (
    SELECT * FROM gold.sales
);

-- Query the external table
SELECT * FROM gold.extsales;
