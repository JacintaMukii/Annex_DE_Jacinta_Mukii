# ABC Phones Credit Portfolio Analysis

## Overview

This project implements an end-to-end batch ETL pipeline and analytics workflow for ABC Phones’ credit portfolio data. The objective was to design a scalable data engineering solution capable of ingesting, cleaning, transforming, monitoring, and analyzing customer credit and satisfaction data.

The solution follows a medallion architecture approach:

* Bronze Layer → Raw ingestion
* Silver Layer → Cleaned and standardized data
* Gold Layer → Analytics-ready business tables

---

# Architecture

The pipeline follows the structure below:

```text id="r78g0p"
Source Files → Bronze → Silver → Gold → Reporting
```

### Bronze Layer

Stores raw ingested datasets with minimal transformations.

### Silver Layer

Applies cleaning, standardization, deduplication, and validation rules.

### Gold Layer

Creates analytics-ready tables with engineered business features such as:

* age_band
* income_band
* days_past_due
* risk_category

---

# Technologies Used

| Tool                         | Purpose                            |
| ---------------------------- | ---------------------------------- |
| Microsoft SQL Server         | Data warehouse and transformations |
| SQL Server Management Studio | Query execution and management     |
| Python (optional)            | Data profiling and exploration     |
| Power BI / Excel             | Reporting and visualization        |

---
