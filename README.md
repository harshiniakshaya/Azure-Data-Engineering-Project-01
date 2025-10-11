# End-to-End Cloud Data Pipeline Implementation in Azure

## Project Overview
Designed and implemented a complete, end-to-end data engineering pipeline on the **Azure cloud platform**. This project involved ingesting raw data from a source API, processing it through a **Medallion Architecture**, and serving the curated data for business intelligence and analytics. The entire workflow was automated and built using modern data engineering principles and Azure services.

---

## Key Features

### 1. Data Ingestion
- Engineered a **dynamic and scalable ingestion pipeline** using **Azure Data Factory (ADF)**.
- Automatically extracted data from a **GitHub source**.
- Stored raw data in the **Bronze layer** of **Azure Data Lake Storage (ADLS) Gen2**.

### 2. Data Transformation
- Developed **PySpark notebooks** in **Azure Databricks** to clean, validate, and transform raw JSON data.
- Handled **missing values**, created **new features**, and structured the data.
- Stored processed data in the **Silver layer** in efficient **Parquet format**.

### 3. Data Serving
- Constructed a **Lakehouse serving layer** using **Azure Synapse Analytics**.
- Created **SQL views** on top of Silver layer data.
- Used **CETAS (Create External Table As Select)** to materialize key tables into a performant **Gold layer**, ready for high-speed queries.

### 4. Data Visualization
- Connected **Power BI** to the **Azure Synapse Serverless SQL endpoint**.
- Built **interactive dashboards** and reports for end-users to derive actionable insights.

---

## Technologies Used
- **Azure Services:** Azure Data Factory, Azure Databricks, Azure Synapse Analytics, Azure Data Lake Storage Gen2  
- **Programming & Querying:** PySpark, SQL  
- **Visualization:** Power BI  

---

## Architecture Diagram

![Architecture Diagram](images/Architecture%20Diagram.png)

