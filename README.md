# Global Aviation Network Intelligence

**Technologies:** PostgreSQL | SQL | Power BI | pgAdmin 4

## Project Overview

Developed an end-to-end aviation analytics project analysing **66,378 global flight routes** to investigate airline networks, airport connectivity and international aviation patterns.

Used PostgreSQL for data analysis and Power BI to transform findings into an interactive business intelligence dashboard.

## Dataset

**Source:** Kaggle – Global Flights, Airports & Airlines

Three datasets covering global airports, airlines and flight routes.

## SQL Analysis

Applied SQL techniques including:

- **CTEs and JOINs** to analyse relationships between airports, airlines and routes.
- **Window functions (RANK, PARTITION BY)** to identify leading airlines and aviation hubs.
- **Aggregations and subqueries** to investigate route volumes and network coverage.
- **CASE statements** to classify flight distances and domestic/international routes.

Five SQL scripts are available in the `SQL` folder.

## Key Findings

- **66,378** global flight routes analysed.
- **564** distinct airline IATA codes represented.
- **Atlanta (ATL)** ranked as the busiest aviation hub with 1,826 route connections.
- **Ryanair** operated the most routes in the dataset (2,384).
- **50.9%** of routes were international.
- **60.5%** of routes were short-haul (under 1,500 km).

## Power BI Dashboard

Built a dashboard featuring:

- KPI cards for routes, airports, airlines and average distance.
- Airline and airport connectivity rankings.
- Domestic versus international route comparisons.
- Route distance distributions and classifications.
- Geographic and airline network analysis.

![Global Aviation Network Dashboard](Images/global_aviation_dashboard.png)

The Power BI report is available in the `Dashboard` folder.

## Project Outcome

Demonstrated practical experience in **relational database analysis, advanced SQL querying, data visualisation and business intelligence reporting**.

*Note: The dataset represents a historical aviation route network rather than live flight operations.*
