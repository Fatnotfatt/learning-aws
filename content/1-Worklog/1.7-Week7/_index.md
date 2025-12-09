---
title: "Worklog Week 7"
date: 2025-10-20
weight: 7
chapter: false
pre: " <b> 1.7. </b> "
---

### Week 7 Objectives:

- Understand **Amazon DynamoDB** as a fully managed NoSQL database service: key-value and document data models, partition keys, sort keys, global secondary indexes (GSI), and on-demand vs provisioned capacity modes.
- Learn how to build and manage **Data Lakes on AWS** using services like Amazon S3, AWS Glue, Amazon Athena, and Amazon QuickSight for analytics workloads.
- Explore **AWS Analytics services**: Amazon Athena for serverless SQL queries on S3, AWS Glue for ETL operations, and Amazon QuickSight for business intelligence and visualization.
- Practice data ingestion, transformation, and analysis workflows in the AWS cloud environment.
- Understand cost optimization and performance tuning strategies for analytics workloads on AWS.

---

### Tasks for the Week:

| Day | Task                                                                                                                                                                                                                                                                                                                                                                  | Start Date | Completion Date | Reference                         |
| --- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- | --------------- | --------------------------------- |
| 2   | - **Lab Practice:** _Data Lake on AWS._ <br> + Understand data lake architecture on AWS using S3 as the data lake storage layer. <br> + Learn about data ingestion, cataloging, and querying patterns. <br> + Explore integration between S3, Glue, and Athena for analytics.                                                                                         | 20/10/2025 | 20/10/2025      | https://000035.awsstudygroup.com/ |
| 3   | - **Lab Practice:** _Amazon DynamoDB Immersion Day._ <br> + Deep dive into DynamoDB core concepts: tables, items, attributes, primary keys, and indexes. <br> + Practice creating tables, inserting data, and querying with partition keys and sort keys. <br> + Understand DynamoDB capacity modes (on-demand vs provisioned) and pricing models.                    | 21/10/2025 | 21/10/2025      | https://000039.awsstudygroup.com/ |
| 4   | - **Lab Practice:** _Cost and performance analysis with AWS Glue and Amazon Athena._ <br> + Use AWS Glue to catalog data stored in S3 and create data catalogs. <br> + Run SQL queries on S3 data using Amazon Athena. <br> + Analyze cost implications and optimize query performance. <br> + Understand partitioning strategies for cost-effective analytics.       | 22/10/2025 | 22/10/2025      | https://000040.awsstudygroup.com/ |
| 5   | - **Lab Practice:** _Work with Amazon DynamoDB._ <br> + Create DynamoDB tables with appropriate key schemas. <br> + Perform CRUD operations (Create, Read, Update, Delete) on DynamoDB items. <br> + Work with Global Secondary Indexes (GSI) and Local Secondary Indexes (LSI). <br> + Practice querying and scanning operations, understanding the differences.     | 23/10/2025 | 23/10/2025      | https://000060.awsstudygroup.com/ |
| 6   | - **Lab Practice:** _Building a Datalake with Your Data._ <br> + Build a complete data lake solution using AWS services. <br> + Implement data ingestion pipelines. <br> + Set up data transformation workflows with AWS Glue. <br> + Create analytics-ready datasets for downstream consumption.                                                                     | 24/10/2025 | 24/10/2025      | https://000070.awsstudygroup.com/ |
| 7   | - **Lab Practice:** _Analytics on AWS workshop._ <br> + Comprehensive workshop covering the full analytics stack on AWS. <br> + Integrate multiple services: S3, Glue, Athena, and visualization tools. <br> + Build end-to-end analytics solutions from raw data to insights.                                                                                        | 25/10/2025 | 25/10/2025      | https://000072.awsstudygroup.com/ |
| 8   | - **Lab Practice:** _Get started with QuickSight._ <br> + Create visualizations and dashboards using Amazon QuickSight. <br> + Connect QuickSight to various data sources (S3, Athena, RDS, etc.). <br> + Build interactive reports and share insights with stakeholders. <br> - Summarize and review all **AWS Analytics and Data Lake Services** covered in Week 7. | 26/10/2025 | 26/10/2025      | https://000073.awsstudygroup.com/ |

---

### Achievements in Week 7:

- Gained comprehensive understanding of **Amazon DynamoDB**:

  - DynamoDB as a fully managed, serverless NoSQL database service with single-digit millisecond latency.
  - Key concepts: tables, items, attributes, primary keys (partition key + optional sort key), and data modeling best practices.
  - Global Secondary Indexes (GSI) and Local Secondary Indexes (LSI) for flexible query patterns.
  - Capacity modes: on-demand (pay-per-request) vs provisioned (reserved capacity) and when to use each.
  - DynamoDB Streams for real-time data processing and change data capture.

- Built hands-on experience with **Data Lake architecture on AWS**:

  - Amazon S3 as the foundation for data lake storage with lifecycle policies, versioning, and encryption.
  - Data lake architecture patterns: raw zone, processed zone, and curated zone.
  - Data ingestion strategies: batch uploads, streaming data, and integration with various data sources.
  - Best practices for organizing data in S3: partitioning, naming conventions, and folder structures.

- Mastered **AWS Analytics services**:

  - **AWS Glue**: Serverless ETL service for discovering, cataloging, and transforming data.
    - Glue Data Catalog as a centralized metadata repository.
    - Glue ETL jobs for data transformation using Apache Spark.
    - Glue Crawlers for automatic schema discovery.
  - **Amazon Athena**: Serverless interactive SQL query service for analyzing data in S3.
    - Pay-per-query pricing model and cost optimization strategies.
    - Integration with Glue Data Catalog for schema-on-read queries.
    - Query performance optimization through partitioning and columnar formats (Parquet, ORC).
  - **Amazon QuickSight**: Cloud-native business intelligence and visualization service.
    - Creating dashboards, visualizations, and reports.
    - Connecting to various data sources (S3, Athena, RDS, Redshift, etc.).
    - Sharing insights with teams and embedding analytics in applications.

- Completed comprehensive lab practice sessions:

  - **Data Lake on AWS (Lab 35)**: Built foundational understanding of data lake architecture and S3-based storage patterns.
  - **Amazon DynamoDB Immersion Day (Lab 39)**: Deep dive into DynamoDB operations, data modeling, and best practices.
  - **Cost and performance analysis with AWS Glue and Amazon Athena (Lab 40)**: Learned to optimize analytics workloads for cost and performance.
  - **Work with Amazon DynamoDB (Lab 60)**: Practiced CRUD operations, indexing strategies, and query patterns.
  - **Building a Datalake with Your Data (Lab 70)**: Implemented end-to-end data lake solution with ingestion and transformation pipelines.
  - **Analytics on AWS workshop (Lab 72)**: Comprehensive workshop integrating multiple analytics services.
  - **Get started with QuickSight (Lab 73)**: Created visualizations and dashboards for business intelligence.

- After Week 7, established a complete understanding of the AWS Analytics and Data Lake ecosystem:
  - From **NoSQL databases (DynamoDB)** → **Data Lake storage (S3)** → **ETL and cataloging (Glue)** → **Query and analysis (Athena)** → **Visualization (QuickSight)**, ready to design and implement modern analytics solutions on AWS.
