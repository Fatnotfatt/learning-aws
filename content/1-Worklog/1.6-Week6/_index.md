---
title: "Worklog Week 6"
date: 2025-10-13
weight: 6
chapter: false
pre: " <b> 1.6. </b> "
---

### Week 6 Objectives:

* Review fundamental **Database Concepts**: relational model, primary/foreign keys, ACID, normalization, OLTP vs OLAP.
* Understand **Amazon RDS** as a managed relational database service on AWS: engines, Multi-AZ, read replicas, backup, and scaling.
* Learn the benefits of **Amazon Aurora** compared to standard RDS engines: performance, high availability, automatic storage scaling, MySQL/PostgreSQL compatibility.
* Get familiar with **Amazon Redshift** as a petabyte-scale **data warehouse** for analytics, and distinguish it from RDS (OLTP workloads).
* Learn how **Amazon ElastiCache** (Redis / Memcached) provides an in-memory cache layer to reduce latency and offload backend databases.
* Practice **Database Schema Conversion & Migration** using **AWS DMS** and **AWS Schema Conversion Tool (SCT)** for moving databases to AWS.

---

### Tasks for the Week:

| Day | Task | Start Date | Completion Date | Reference                                                                                                                      |
|-----|------|------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------|
| 2 | - Review **Database Concepts** (Module 06-01): relational model, ACID, transactions, indexing, normalization, OLTP vs OLAP. <br> - Map traditional on-premises database concepts to AWS cloud services. | 13/10/2025 | 13/10/2025 | [Class material – Module 06-01](https://www.youtube.com/watch?v=OOD2RwWuLRw&list=PLahN4TLWtox2a3vElknwzU_urND8hLn1i&index=217) |
| 3 | - Study **Amazon RDS & Amazon Aurora** theory (Module 06-02). <br> - Learn about supported engines, Multi-AZ, automated backups, snapshots, read replicas, and scaling. <br> - Compare RDS vs Aurora in terms of performance, availability, and cost. | 14/10/2025 | 14/10/2025 | https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html, https://aws.amazon.com/rds/aurora/                        |
| 4 | - Study **Amazon Redshift & Amazon ElastiCache** (Module 06-03). <br> - Distinguish OLTP (RDS/Aurora) vs OLAP (Redshift) and in-memory cache layer (ElastiCache). <br> - Explore common use cases: data warehouse & BI, caching sessions, leaderboard, rate limiting, etc. | 15/10/2025 | 15/10/2025 | https://aws.amazon.com/redshift/, https://aws.amazon.com/elasticache/                                                          |
| 5 | - **Lab Practice:** *Module 06-Lab 5 – Amazon Relational Database Service (Amazon RDS).* <br>   + Create an RDS instance, configure security group, parameter group, backups. <br>   + Connect from a client, run queries, and test behavior (e.g., failover/Multi-AZ if available in the lab). | 16/10/2025 | 16/10/2025 | https://000005.awsstudygroup.com/                                                                                              |
| 6 | - **Lab Practice:** *Module 06-Lab 43 – Database Schema Conversion & Migration.* <br>   + Use **AWS Schema Conversion Tool (SCT)** to analyze and convert schema from source DB to RDS/Aurora/Redshift target. <br>   + Use **AWS Database Migration Service (DMS)** to migrate data (full load and change data capture if supported in the lab). <br> - Summarize and review all **AWS Database Services** covered in Week 6. | 17/10/2025 | 17/10/2025 | https://000043.awsstudygroup.com/                                                                                              |

---

### Achievements in Week 6:

* Consolidated understanding of **core database concepts**:
    * Relational tables, primary/foreign keys, relational integrity, and basic indexing.
    * ACID properties of transactions and why they matter in OLTP workloads.
    * Clear distinction between **OLTP vs OLAP** and how this maps to AWS services.

* Gained hands-on familiarity with **Amazon RDS**:
    * Created and managed RDS instances via AWS Management Console.
    * Reviewed supported engines (MySQL, PostgreSQL, MariaDB, Oracle, SQL Server, Aurora) and their typical use cases.
    * Practiced configuring Multi-AZ, automated backups, snapshots, monitoring, and basic scaling options.

* Understood the strengths of **Amazon Aurora**:
    * Aurora as a cloud-native, MySQL/PostgreSQL-compatible database with significantly improved performance over standard engines.
    * Aurora DB cluster architecture, with a distributed storage layer across multiple AZs.
    * Reader and writer endpoints, automatic storage scaling, and high availability design.

* Built a big-picture view of **Amazon Redshift & ElastiCache**:
    * Redshift as a columnar, petabyte-scale data warehouse optimized for analytics and BI workloads.
    * How Redshift differs from RDS/Aurora: optimized for complex queries over large datasets rather than transactional workloads.
    * ElastiCache (Redis/Memcached) as a fully managed, low-latency in-memory cache layer to increase throughput and reduce load on backend databases.

* Completed the main labs of the week:
    * **Module 06-Lab 5 – Amazon RDS**:
        * Deployed an RDS instance, connected from a client, executed basic SQL queries.
        * Observed the impact of configuration changes (instance class, storage, backup settings) on behavior and management.
    * **Module 06-Lab 43 – Database Schema Conversion & Migration**:
        * Used **AWS Schema Conversion Tool (SCT)** to assess and convert schemas, identifying what can be auto-converted vs. what needs manual adjustment.
        * Used **AWS Database Migration Service (DMS)** to migrate data from a source database into RDS/Aurora/Redshift targets according to the lab scenario.

* After Week 6, established a clear mental model of the AWS database ecosystem:
    * From **traditional database concepts** → **RDS/Aurora for OLTP** → **Redshift for OLAP** → **ElastiCache for caching** → **DMS/SCT for migration**, ready to apply in real-world architectures.
