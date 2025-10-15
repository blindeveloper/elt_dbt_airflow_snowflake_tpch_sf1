# 🧭 Project Overview
This project implements a modern data pipeline using dbt, Airflow, and Snowflake to automate data transformation, orchestration, and analytics delivery.

# 🚀 Architecture

Workflow summary:
1. Data Extraction – Raw data (TPCH_SF1) is loaded into Snowflake (from external sources or ingestion pipelines).
2.	Data Transformation (dbt) – dbt models apply transformations following a layered structure:
	- stg_ – staging models to clean and standardize raw data
	- int_ – intermediate transformations for joins, filters, and enrichments
	- fct_ / dim_ – fact and dimension models for analytics and reporting
3.	Orchestration (Airflow) – Airflow DAGs schedule and orchestrate dbt runs, ensuring reliable and repeatable workflows.
4.	Data Quality – dbt tests (generic + singular) validate key business rules and data integrity.

# 🧰 Tech Stack

1. Snowflake Cloud data warehouse for scalable storage and computation
2. dbt (Data Build Tool) Data transformation, modeling, and testing
3. Apache Airflow Workflow orchestration and scheduling
4. SQL / Python Core languages for transformations and orchestration logic
```
.
├── airflow_dags/          # Airflow DAG definitions
├── data_pipeline/           # dbt models, macros, tests, seeds
│   ├── models/
│   │   ├── staging/
│   │   └── marts/
│   ├── tests/
│   └── macros/
└── scripts/               # Utility scripts for deployment or file movement
```

### 1. create venv
`python3 -m venv venv`
### 2. activate venv
`source ./venv/bin/activate`
### 3. install reqs
`pip install -r ./requirements.txt`
### 4. run dbt models
`dbt run`
### 5. install astro
`brew install astro`
### 6. copy dbt project to airflow dags
`cd scripts`
`./sync_airflow.sh`

airflow will run in `http://localhost:8080/`


### deactivate venv in needed
`deactivate`