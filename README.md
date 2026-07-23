# Superstore-Sales-Analysis

## Project Overview

A full end-to-end business analysis of a retail superstore dataset covering 10,194 orders across four years (2023–2026). The goal was to answer six core business questions around profitability, category performance, customer revenue distribution, regional trends, and sales growth — using Excel for data cleaning, pivot table analysis, and dashboarding, and SQL for deeper querying.

---

## Tools Used

- Microsoft Excel — Data cleaning, pivot tables, dashboard
- SQL / DB Browser for SQLite — Business queries and aggregations

---

## Dataset

- **Rows:** 10,194
- **Columns:** 21
- **Date Range:** 2023–2026
- **Fields Include:** Order ID, Order Date, Ship Date, Customer Name, Segment, Region, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit

---

## Project Phases

### Phase 1 — Business Questions

Defined six core business questions to guide the analysis:

1. What are total profits?
2. Which categories generate the most sales?
3. Which products lose money?
4. What percentage of revenue comes from top customers?
5. Which regions perform best?
6. How do sales change over time?

### Phase 2 — Data Review

Reviewed dataset structure, column definitions, data types, and overall shape before cleaning. Confirmed 21 columns across 10,194 rows spanning four years of transaction data.

### Phase 3 — Data Cleaning

- **Blank Values** — No nulls found across all 21 columns
- **Duplicate Rows** — No duplicates found
- **Future Ship Dates** — Identified 46 rows with 2027 ship dates against 2023 order dates. Flagged as likely data entry errors. In a real business setting these would be escalated to the data owner before correction
- **Negative Profits** — 1,901 rows with negative profit identified. Retained as valid business outcomes driven by heavy discounting
- **Quantities** — Range of 1–14, no zeros or negatives. 114 rows with quantity above 10 reviewed and confirmed as legitimate bulk orders

**Helper Columns Added:**

- **Ship_Date_Flag** — Flags ship dates beyond 2026 as "Flagged - Likely Error"
- **Profit_Status** — Labels each order as "Profitable" or "Loss"
- **Discount_Band** — Buckets discount into No Discount / Low / Medium / High / Very High
- **Order_Year** — Extracts year from Order Date for time trend analysis

### Phase 4 — Analysis

Built six pivot tables and charts in Excel, each answering one business question. Results compiled into a single dashboard.

### Phase 5 — SQL

Wrote 18 SQL queries in DB Browser for SQLite against the full 10,194 row dataset covering basic selects, aggregations, filtering, grouping, and profit margin calculations.

---

## Dashboard

<img width="927" height="488" alt="Dashboard_1" src="https://github.com/user-attachments/assets/0933ea83-a89c-4663-8ba4-b01033df0472" />
<img width="1356" height="497" alt="Screen Shot 2026-07-13 at 4 07 55 PM" src="https://github.com/user-attachments/assets/ac2bef42-6770-405b-ae6a-9fd36e1dd4ff" />
<img width="990" height="383" alt="Screen Shot 2026-07-13 at 4 12 30 PM" src="https://github.com/user-attachments/assets/374c98e0-ef18-4ac9-bd22-7e5b6dc00811" />

---

## Business Questions & Findings

### 1. What Are Total Profits?

Net profit of $292K across 10,194 orders. However, 1,901 orders (18.6%) were unprofitable, generating $157K in losses that offset $449K in gains — reducing overall profit by 35%.

### 2. Which Categories Generate the Most Sales?

Technology leads in both sales ($839K) and profit ($146K), making it the strongest overall performer. Office Supplies ranks third in sales ($731K) but delivers the highest profit efficiency ($126K), suggesting healthier margins and less discounting. Furniture generates $754K in sales but only $19K in profit — the lowest margin by far — driven by net losses in Tables and Bookcases sub-categories. High sales volume alone does not guarantee profitability.

### 3. Which Products Lose Money?

Binders (-$38K), Tables (-$32K), and Machines (-$30K) are the three largest loss-generating sub-categories. Notably losses span all three categories — Binders under Office Supplies, Tables and Bookcases under Furniture, Machines under Technology — suggesting discounting is a business-wide issue rather than isolated to one area.

### 4. What Percentage of Revenue Comes From Top Customers?

Revenue is broadly distributed across the customer base. The top customer accounts for just 1.08% of total sales and the top 5 combined represent only 3.79%. It takes 172 customers — roughly the top 21% of 800 total — to reach 50% of revenue. This indicates low customer concentration risk, though it also suggests limited VIP or key account relationships that could be leveraged for more predictable revenue.

### 5. Which Regions Perform Best?

The West leads in both sales ($739K) and profit ($110K), followed closely by the East ($691K, $94K). The South outperforms Central in profit ($46K vs $39K) despite lower sales ($391K vs $503K), suggesting Central's volume is being undermined by heavy discounting — consistent with the business-wide discounting pattern identified across categories.

### 6. How Do Sales Change Over Time?

Sales and profit grew consistently from 2023–2026, with revenue up 51% ($494K → $745K) and profit up 85% ($51K → $95K). A brief 2024 sales dip was offset by improved margins, suggesting stronger discount discipline that year. Profit growing faster than sales indicates improving efficiency, though discounting remains an ongoing risk to sustaining this trend.

---

## Key Takeaway

Discount rate is the single strongest predictor of unprofitability across this dataset. Heavy discounting is driving losses across all three categories and multiple regions. A targeted pricing strategy review — particularly for Furniture, Binders, and Machines — could significantly improve net profit without requiring any increase in sales volume.

---

## SQL Queries

See [superstore_queries.sql](superstore_queries.sql) for all 18 queries covering aggregations, filtering, profit margin calculations, and time trend analysis.

---

## Repository Structure

```
superstore-sales-analysis/
│
├── README.md
├── dashboard_1.png
├── dashboard_2.png
├── dashboard_3.png
├── Superstore_Sales_Analysis.xlsx
└── superstore_queries.sql
```


