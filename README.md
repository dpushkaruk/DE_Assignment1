# 📘 Student Assignment: Working with Nested JSON Data

## Objective

The goal of this assignment is to practice working with **semi-structured JSON data**, transform it into a **structured format**, and perform **analytical queries using window functions** to extract meaningful insights.

---

## Task Description

### 1. Dataset Selection

* Find a dataset that:

    * Is stored in **JSON format**
    * Contains a **nested structure** (e.g. arrays, nested objects). The dataset must contain **both nested data and arrays.**
    * Has a size of **more than 10 MB**
* You may use:

    * [Kaggle](https://www.kaggle.com/)
    * Open data portals
    * Any other publicly available source

Examples of nested JSON structures:

* Arrays of objects
* Objects inside objects

---

### 2. Data Loading

* Load the dataset into an analytical environment.
* You may use:

    * DuckDB
    * BigQuery
    * Any other analytical database system that supports JSON

---

### 3. Data Parsing (Mandatory)

* Transform semi-structured JSON data into a **structured format** (tables with columns).
* This includes:

    * Flattening(unnest) arrays
    * Extracting nested fields
    * Casting data types where needed

The final result should be queryable using SQL.

---

### 4. Data Analysis Using Window Functions (Mandatory)

* Use **SQL window functions** to analyze the dataset.
* Provide **at least 2 data insights**.

Examples of insights:

* Top 3 companies by revenue per region
* Ranking users by activity within categories
* Running totals or moving averages over time
* Percentage contribution within a group

Each insight should include:

* SQL query
* Short explanation of the result

---

## Deliverables

* `README.md` (this file, extended with your work)
* SQL scripts or notebooks used for:

    * Loading data
    * Parsing JSON
    * Analysis
* Post it all on your GitHub and add a link to GitHub in Moodle.
---

## Evaluation Criteria

### Obligatory Part — **10 points**

| Criteria                                   | Points |
|--------------------------------------------|--------|
| Dataset > 10 MB with nested JSON structure | 1      |
| Correct data loading                       | 1      |
| Proper parsing of semi-structured data     | 2      |
| Use of window functions                    | 2      |
| At least 2 meaningful data insights        | 2      |
| Knowledge of theory*                       | 2      |
| **Total**                                  | **10** |

_*The Theoretical Questions section will help you prepare for the defense of your theoretical knowledge. The teacher has the right to rephrase the theoretical questions._


### Additional Task — **+2.5 points (Optional)**

Choose **one** of the following:

* Add **data quality checks** (nulls, duplicates, schema validation)
* Visualize results (charts or dashboards)

Clearly document the additional work in the README.

---

## Notes

* SQL clarity and readability matter.
* Reproducibility is important.
* Insights should be logical and data-driven, not trivial aggregations.

---

Below is a **ready-to-add section** for your `README.md`.

---

## 📚 Theoretical Questions

Answer the following **10 theoretical questions**. Answers should be concise, technically correct, and supported by examples where appropriate.

1. **Big Data vs Traditional Data Processing**
   Explain how Big Data differs from traditional data processing systems. Why do data volume, velocity, and distribution fundamentally change system design?

2. **The 5Vs of Big Data**
   Interpret the 5Vs (Volume, Velocity, Variety, Veracity, Value). Explain how each V impacts data ingestion, storage, processing, and analytics.

3. **Data Variety and Schema Design**
   Explain how data variety affects schema design. Why are schema-on-read approaches often used for semi-structured and unstructured data?

4. **Data Types Classification**
   Classify data into structured, semi-structured, and unstructured. Provide examples of each and explain how they are typically stored and processed.

5. **Processing Semi-Structured Data**
   Describe common techniques for processing semi-structured data (e.g. JSON, Avro, Parquet). How do analytical databases handle nested data?

6. **Massively Parallel Processing (MPP)**
   Describe MPP architectures. How do they distribute data and parallelize computation? What are the benefits and challenges of this approach?

7. **OLTP vs OLAP Systems**
    Differentiate OLTP and OLAP workloads in terms of:

    * Query patterns
    * Typical technologies used
    * Data storing

---

Good luck!





------------------------------------------------------------------------------------------------------------------------------------------

I didn't understand the idea of adding the whole previous readme or basically didnt catch what was supposed to be done here correctly. Nevertheless, my sql script is in its supposed file. I used the DuckDB via DataGrip and the dataset from here https://www.kaggle.com/datasets/yelp-dataset/yelp-dataset?select=yelp_academic_dataset_business.json. The script is pretty basic but it works, also i clear data a bit, and at least second query is kinda funny and insightful. As it seems, all potential requirements were covered. Also, the graphs for results are in page format in this repo. Thank you for your attention!
