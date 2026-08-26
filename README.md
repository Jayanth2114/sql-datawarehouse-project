# 📊 Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀

This project demonstrates a complete **Data Warehousing and Analytics solution**, covering everything from data ingestion and transformation to data modeling and analytical reporting.

The project is designed as a **portfolio project** to demonstrate practical knowledge of **SQL, Data Engineering, ETL, Data Warehousing, Data Modeling, and Data Analytics** using industry-standard practices.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture**, consisting of three layers:

### 🥉 Bronze Layer

The Bronze layer stores the raw data exactly as it is received from the source systems.

* Data is ingested from CSV files.
* Raw data is loaded into SQL Server.
* No major transformations are performed at this stage.
* Acts as the initial landing area for source data.

### 🥈 Silver Layer

The Silver layer is responsible for preparing the raw data for analytical use.

* Data cleansing
* Data validation
* Removing duplicates
* Handling missing values
* Standardizing formats
* Data type conversions
* Resolving data quality issues
* Integrating data from different source systems

### 🥇 Gold Layer

The Gold layer contains business-ready data designed for reporting and analytics.

* Data is organized using a **Star Schema**.
* Dimension tables contain descriptive information.
* Fact tables contain measurable business events.
* Data is optimized for analytical queries and reporting.

---

## 📖 Project Overview

The project covers the complete lifecycle of building a modern data warehouse.

### Key Areas

* **Data Architecture**
  Designing a modern data warehouse using the Bronze, Silver, and Gold Medallion Architecture.

* **ETL Pipelines**
  Extracting data from source systems, transforming it, and loading it into the data warehouse.

* **Data Cleaning**
  Identifying and resolving data quality issues before the data reaches the analytical layer.

* **Data Modeling**
  Designing fact and dimension tables using a Star Schema.

* **Data Integration**
  Combining data from ERP and CRM source systems into a unified analytical model.

* **Analytics & Reporting**
  Developing SQL queries and reports to generate meaningful business insights.

---

## 🎯 Skills Demonstrated

This project demonstrates practical experience in:

* SQL Development
* Data Engineering
* Data Warehousing
* ETL Development
* Data Cleaning
* Data Transformation
* Data Modeling
* Dimensional Modeling
* Data Analytics
* SQL Server
* Git & GitHub
* Documentation

---

## 🛠️ Tools & Technologies

| Tool / Technology                       | Purpose                                       |
| --------------------------------------- | --------------------------------------------- |
| **SQL Server Express**                  | Database and data warehouse                   |
| **SQL Server Management Studio (SSMS)** | Database management and SQL development       |
| **SQL**                                 | Data extraction, transformation, and analysis |
| **Draw.io**                             | Architecture and data modeling diagrams       |
| **Git & GitHub**                        | Version control and project management        |
| **Notion**                              | Project planning and documentation            |

All tools used in this project are available for free.

---

## 📂 Data Sources

The project uses data from two source systems:

### ERP System

The ERP source contains information related to:

* Customer information
* Product information
* Sales transactions

### CRM System

The CRM source contains information related to:

* Customer information
* Customer details
* Customer-related attributes

Both source systems are provided as **CSV files** and are integrated into a single data warehouse.

---

# 🚀 Project Requirements

## 1. Building the Data Warehouse

### 🎯 Objective

Develop a modern data warehouse using **SQL Server** to consolidate sales data and enable analytical reporting and informed decision-making.

### Specifications

#### Data Sources

Import data from two source systems:

* ERP
* CRM

Both systems provide data in CSV format.

#### Data Quality

The data must be cleaned and standardized before being used for analysis.

This includes:

* Removing duplicate records
* Handling missing values
* Standardizing data formats
* Validating data
* Resolving inconsistent values
* Converting data types where required

#### Data Integration

Integrate data from both source systems into a unified data model that is easy to understand and optimized for analytical queries.

#### Data Scope

The project focuses only on the **latest available dataset**.

Historical data tracking and historization are outside the scope of this project.

#### Documentation

Document the data warehouse architecture, data flow, data models, and datasets to make the project easy to understand for:

* Business stakeholders
* Data engineers
* Data analysts
* BI developers

---

# 📊 BI & Analytics

## 🎯 Objective

Develop SQL-based analytical queries and reports to generate actionable business insights.

The analytics layer focuses on three major areas:

### 👥 Customer Behavior

Analyze customer-related metrics such as:

* Customer distribution
* Customer purchasing behavior
* Customer activity
* Customer segmentation
* Customer sales contribution

### 📦 Product Performance

Analyze product-related metrics such as:

* Product sales
* Product performance
* Best-selling products
* Product categories
* Revenue contribution

### 📈 Sales Trends

Analyze sales-related metrics such as:

* Total sales
* Revenue trends
* Sales by time period
* Sales by product
* Sales by customer
* Overall business performance

These insights can help stakeholders make better and more informed business decisions.

---

# 📁 Project Structure

```text
data-warehouse-project/
│
├── datasets/
│   └── Raw ERP and CRM CSV datasets
│
├── docs/
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── naming-conventions.md
│
├── scripts/
│   ├── bronze/
│   │   └── Raw data ingestion scripts
│   │
│   ├── silver/
│   │   └── Data cleaning and transformation scripts
│   │
│   └── gold/
│       └── Analytical model scripts
│
├── tests/
│   └── Data quality and validation tests
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

---

# 📚 Documentation

The `docs` directory contains the project's technical documentation.

### `etl.drawio`

Illustrates the ETL process used to extract, transform, and load data.

### `data_architecture.drawio`

Shows the overall architecture of the data warehouse and the Bronze, Silver, and Gold layers.

### `data_flow.drawio`

Illustrates how data moves from the source systems through the different data warehouse layers.

### `data_models.drawio`

Contains the data models and Star Schema used in the Gold layer.

### `data_catalog.md`

Provides information about the datasets, columns, data types, and business descriptions.

### `naming-conventions.md`

Defines consistent naming conventions for:

* Tables
* Columns
* Files
* Database objects
* SQL scripts

---

# 🔄 ETL Process

The overall data pipeline follows these steps:

```text
Source Systems
      │
      ▼
CSV Files
      │
      ▼
Bronze Layer
(Raw Data)
      │
      ▼
Silver Layer
(Cleaned & Transformed Data)
      │
      ▼
Gold Layer
(Business-Ready Data)
      │
      ▼
Analytics & Reporting
```

---

# ⭐ Project Goals

The main goals of this project are to:

1. Build a complete modern data warehouse.
2. Implement the Medallion Architecture.
3. Practice SQL-based ETL development.
4. Clean and standardize raw data.
5. Integrate data from multiple source systems.
6. Build a Star Schema for analytics.
7. Develop analytical SQL queries.
8. Generate actionable business insights.
9. Follow proper data engineering and documentation practices.

---

# 👨‍💻 About Me

Hi there! I'm **Jayanth G**, a Computer Science enthusiast and aspiring **Data & Technology professional** passionate about turning data and technology into meaningful solutions.

I enjoy exploring:

* 📊 Data Analytics
* 🐍 Python
* 🗄️ SQL
* 🤖 AI & Machine Learning
* ☁️ Cloud Computing
* 🏗️ Data Engineering
* 💻 Software Development

I am continuously learning and building projects that help me understand real-world technologies and solve practical problems.

Through my journey, my goal is to **learn, build, share knowledge, and make technology easier and more interesting for others.**

---

## 🚀 Let's Learn, Build & Grow Together!

⭐ If you find this project useful, feel free to explore the repository and learn from it.

**Happy Learning! 📊💻**
