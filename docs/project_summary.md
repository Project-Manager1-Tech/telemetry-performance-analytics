# Telemetry Performance Analytics Dashboard

## Project Overview

This project demonstrates an end-to-end analytics workflow for monitoring IoT device telemetry data using Python, PostgreSQL, SQL, and Power BI.

The objective is to identify performance bottlenecks, reliability issues, operational risks, and device health trends across a large fleet of deployed devices.

---

## Business Problem

Organizations operating large fleets of connected devices require continuous monitoring of system health and performance. Without centralized analytics, identifying failing devices, performance degradation, and operational risks becomes difficult.

This project provides a unified analytics solution that enables:

* Device health monitoring
* Risk detection
* Error analysis
* Performance trend analysis
* Executive-level reporting

---

## Dataset

Synthetic IoT telemetry dataset containing:

* 100,000 telemetry records
* 500 devices
* Multiple deployment locations
* CPU utilization metrics
* Memory utilization metrics
* Temperature readings
* Network latency measurements
* Throughput measurements
* Error counts
* Uptime statistics

---

## Technology Stack

### Data Processing

* Python
* Pandas
* NumPy

### Database

* PostgreSQL
* SQL

### Visualization

* Power BI

### Version Control

* Git
* GitHub

---

## Data Engineering Pipeline

### Data Cleaning

* Missing value validation
* Data type standardization
* Timestamp processing
* Duplicate validation

### Feature Engineering

Created additional analytics fields:

* date
* hour
* month
* risk_flag
* error_severity
* cpu_category
* latency_category
* latency_score
* device_health_score

### Device Health Score

The health score combines:

* CPU utilization
* Memory utilization
* Network latency
* Device uptime

to generate an overall operational health metric.

---

## SQL Analytics

Business-oriented SQL queries were developed to answer:

### Device Analysis

* Top error-producing devices
* Most risky devices
* Lowest health devices

### Location Analysis

* Error distribution by location
* Health score comparison by location

### Performance Analysis

* Peak utilization hours
* Latency impact analysis
* CPU utilization trends

### Risk Analysis

* Error severity distribution
* Latency category analysis
* Risk event identification

---

## Power BI Dashboard

### Page 1: Executive Overview

Provides high-level operational KPIs:

* Fleet Health Score
* Risk Event Percentage
* Average CPU Utilization
* Average Memory Utilization
* Average Latency
* Average Throughput
* Average Uptime

### Page 2: Device Health Analysis

Focuses on:

* Top error devices
* High-risk devices
* Low-health devices
* Error severity analysis

### Page 3: Performance Monitoring

Analyzes:

* CPU utilization trends
* Memory utilization trends
* Network latency trends
* Throughput monitoring
* Performance relationships

### Page 4: Risk Monitoring

Highlights:

* High-risk devices
* Risk event trends
* Operational risk indicators

---

## Key Outcomes

* Built a complete analytics pipeline for 100,000+ telemetry records.
* Designed business KPIs and operational metrics.
* Implemented SQL-driven analytical reporting.
* Created an interactive Power BI dashboard.
* Demonstrated end-to-end data analytics workflow from raw data to executive reporting.

---

## Future Improvements

* Real-time telemetry ingestion
* Automated ETL workflows
* Cloud deployment
* Predictive maintenance models
* Anomaly detection using machine learning
* Automated alert generation
