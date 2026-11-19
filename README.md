# SQL Data Warehouse Project

An end-to-end data warehouse built on **Microsoft SQL Server**. Raw CRM and ERP data is ingested, cleaned, standardized and modeled into analytics-ready tables using a **Bronze → Silver → Gold** layered architecture, written entirely in **T-SQL**.

## Overview

Business data often sits in separate source systems with inconsistent formats, duplicates and missing values. This project brings customer (CRM) and operational (ERP) data together into a single warehouse, so it can be queried reliably for reporting and analysis.

**What the project covers**
- Data integration from multiple source systems
- ETL processes written in SQL
- Data cleansing, standardization and deduplication
- Dimensional data modeling with fact and dimension tables
- Data quality checks and validation

## Architecture

The warehouse follows a three-layer (medallion) design:

| Layer | Purpose |
|-------|---------|
| **Bronze** | Raw data loaded from the CRM and ERP source files as-is, with no transformations. |
| **Silver** | Cleaned and standardized data: duplicates removed, formats fixed, values validated. |
| **Gold** | Business-ready data organized into fact and dimension tables for reporting and analytics. |

```
CRM + ERP source files
        │
        ▼
   ┌─────────┐      ┌─────────┐      ┌─────────┐
   │ Bronze  │ ───▶ │ Silver  │ ───▶ │  Gold   │ ───▶ Reports & analytics
   │  (raw)  │      │(cleaned)│      │ (model) │
   └─────────┘      └─────────┘      └─────────┘
```

## ETL and SQL Techniques

- **Extract:** load raw CRM and ERP datasets into the Bronze layer.
- **Transform:** clean, standardize and reshape the data in the Silver layer.
- **Load:** publish the final model in the Gold layer.
- **Techniques used:** CTEs, window functions, `ROW_NUMBER()`, joins and aggregations for cleansing, deduplication and transformation.

## Data Model

The Gold layer is a dimensional model made of **fact** and **dimension** tables, designed for efficient analytical queries and reporting.

## Data Quality

Checks are included to:
- Validate data consistency across tables
- Identify duplicate records
- Confirm referential integrity between fact and dimension tables

## Repository Structure

```
├── datasets/    Source CRM and ERP data files
├── docs/        Architecture and data model documentation
├── scripts/     SQL scripts for the Bronze, Silver and Gold layers
├── tests/       Data quality checks
├── LICENSE
└── README.md
```

## Tools and Technologies

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)
- ETL
- Data Modeling
- Data Warehousing

## Getting Started

1. Install **SQL Server** and **SQL Server Management Studio (SSMS)**.
2. Clone this repository:
   ```bash
   git clone https://github.com/Vengeance28/sql-datawarehouse-project.git
   ```
3. Create the database and schemas, then run the scripts in the `scripts/` folder in layer order: **Bronze**, then **Silver**, then **Gold**.
4. Run the checks in the `tests/` folder to validate the loaded data.

## Author

**Victor Kimutai**
[LinkedIn](https://www.linkedin.com/in/victork-0b506929b) | [GitHub](https://github.com/Vengeance28)

## License

See the [LICENSE](LICENSE) file for details.
