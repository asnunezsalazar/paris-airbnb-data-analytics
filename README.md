
# 🏡 Paris Airbnb | SQL & Business Analytics

**SQL · Google BigQuery · Looker Studio · Data Analytics · Business Intelligence**

---

## 📋 PROJECT OVERVIEW

**Objective:** Analyze Airbnb listing and calendar data in Paris to identify patterns in host performance, occupancy, pricing strategies, and revenue generation.

**Dataset:** Paris Airbnb Listings & Calendar Data.

**Analysis Type:** Exploratory Data Analysis (EDA), KPI Analysis, Host Performance Analysis, Pricing Analysis & Revenue Trends.

**Tools:** SQL, Google BigQuery, Looker Studio.

---

## 📌 EXECUTIVE SUMMARY

This project analyzes Airbnb listing and calendar data in Paris to explore the factors associated with property performance, occupancy patterns, and revenue generation.

Using SQL and Google BigQuery, two relational datasets were integrated, transformed, and enriched with analytical features to support business performance analysis.

An interactive Looker Studio dashboard was developed to monitor key performance indicators, investigate host responsiveness, compare pricing segments, and explore revenue trends across different months.

The analysis highlights relationships between host response time and occupancy, differences in performance across pricing segments, and revenue contributions across room types.

The findings provide data-driven insights and business recommendations to support pricing optimization and improve Airbnb listing management.

---

## 🎯 BUSINESS PROBLEM

Property performance in the short-term rental market depends on several factors, including pricing strategies, host responsiveness, guest satisfaction, and booking demand.

Understanding how these factors relate to occupancy and revenue can help Airbnb hosts and property managers make more informed business decisions.

This project applies data analytics to investigate listing performance and identify potential opportunities for improvement.

**Business Questions:**

- Does faster host response time relate to higher occupancy?
- Which room types demonstrate the strongest occupancy and revenue performance?
- How does pricing strategy relate to occupancy?
- Which price segment generates the highest total revenue?
- How does monthly revenue performance change from September to January?

---

## 📂 DATASET

The analysis integrates two relational datasets containing information about Airbnb properties and their daily calendar activity in Paris.

| Dataset | Description |
|---|---|
| Listings | Property details, room types, host response time, and review scores |
| Calendar | Listing availability, calendar dates, and daily prices |

**KEY VARIABLES**

- `id` — Unique listing identifier.
- `listing_id` — Listing identifier in the calendar dataset.
- `room_type` — Type of accommodation.
- `host_response_time` — Host response time category.
- `review_scores_value` — Guest review score.
- `date` — Calendar date.
- `available` — Listing availability status.
- `price` — Daily listing price.

---

## 🛠️ METHODOLOGY

The analysis followed a structured data analytics workflow:

- Imported and explored the Airbnb listings and calendar datasets using Google BigQuery.
- Integrated both datasets using SQL and a LEFT JOIN based on listing identifiers.
- Cleaned and transformed the data to prepare it for analysis.
- Engineered additional analytical features to support KPI calculations.
- Created booking and estimated revenue indicators using calendar availability and listing prices.
- Developed a numerical host response score from categorical response time values.
- Segmented listings into pricing categories for comparative analysis.
- Extracted date dimensions to support monthly and weekday trend analysis.
- Connected the transformed dataset to Looker Studio.
- Developed an interactive dashboard to visualize KPIs, performance patterns, and business insights.

---

## 📊 EXPLORATORY DATA ANALYSIS (EDA)

Exploratory Data Analysis was conducted to identify patterns and relationships across Airbnb listings and calendar data.

The analysis focused on:

- Overall listing performance and occupancy.
- Distribution of booked nights across room types.
- Host response time and occupancy patterns.
- Guest review scores and host performance.
- Occupancy comparisons across pricing segments.
- Revenue contribution by room type and price segment.
- Monthly booking activity and revenue trends.

---

## 🏠 HOST PERFORMANCE ANALYSIS

Host responsiveness and guest satisfaction were explored to understand their relationship with listing performance.

Since the original `host_response_time` variable was categorical, an ordinal response score was engineered to support numerical analysis.

**HOST RESPONSE SCORE**

| Host Response Time | Response Score |
|---|---:|
| Within an hour | 4 |
| Within a few hours | 3 |
| Within a day | 2 |
| A few days or more | 1 |

Higher scores indicate faster host response times.

**KEY FINDINGS**

- Average Host Response Score: **3.09 / 4**.
- Listings with hosts responding within an hour showed the highest reported occupancy rate (**78%**).
- Listings with response times of a few hours showed an occupancy rate of **74%**.
- Listings with response times of a day or more showed occupancy rates between **73% and 74%**.

The results suggest an association between faster host responsiveness and higher occupancy.

---

## 💰 PRICING & REVENUE ANALYSIS

Pricing and revenue performance were analyzed to explore how listing prices and availability patterns relate to business performance.

**PRICE SEGMENTATION**

Listings were grouped into three analytical price categories:

| Price Segment | Price Range |
|---|---|
| Low Price | Below €80 |
| Medium Price | €80–€150 |
| High Price | Above €150 |

**KEY FINDINGS**

- Low-priced listings showed the highest reported occupancy rate (**81%**).
- Medium-priced listings followed with an occupancy rate of **79%**.
- High-priced listings showed a lower occupancy rate (**68%**).
- High-priced listings generated the largest total revenue contribution according to the dashboard.
- Entire homes and apartments represented the largest revenue contribution across room types.

These findings highlight the relationship between pricing, occupancy, and revenue, demonstrating the importance of balancing nightly rates with booking demand.

---

## 📈 RESULTS & KEY PERFORMANCE INDICATORS

The Looker Studio dashboard provides an overview of Airbnb listing performance through key business indicators.

**KEY RESULTS**

| Metric | Dashboard Result |
|---|---:|
| Occupancy Rate | 75.68% |
| Total Booked Nights* | 54,565 |
| Total Revenue Estimate* | €8,060,720 |
| Average Review Score | 4.67 / 5 |
| Average Host Response Score | 3.09 / 4 |

**MONTHLY BOOKING ACTIVITY***

| Month | Booked Nights |
|---|---:|
| October | 13,387 |
| November | 10,944 |
| December | 10,755 |
| September | 9,869 |
| January | 9,610 |

**KEY INSIGHTS**

- October recorded the highest booking activity among the five months analyzed.
- Low-priced listings demonstrated the highest occupancy rate.
- Faster host responses were associated with higher occupancy.
- High-priced listings generated the largest total revenue contribution.
- Entire homes and apartments accounted for the largest share of revenue across room types.
- The overall average guest review score was 4.67 out of 5.

*Important: Booked nights are estimated using unavailable calendar dates as a booking proxy. Total revenue is an estimate based on the same assumption and listed prices, not verified transaction revenue.*

---

## 💼 BUSINESS RECOMMENDATIONS

Based on the dashboard findings, the following recommendations were identified:

**1. IMPROVE HOST RESPONSE TIME**

Encourage hosts to respond to guest inquiries within an hour to support stronger occupancy performance.

**2. MAINTAIN HIGH GUEST SATISFACTION**

Encourage hosts to improve the guest experience and maintain high review scores to support listing competitiveness.

**3. OPTIMIZE PRICING STRATEGIES**

Evaluate pricing strategies by balancing occupancy performance and total revenue generation rather than focusing exclusively on higher nightly rates.

**4. MONITOR REVENUE TRENDS**

Use monthly performance indicators to identify revenue fluctuations and support more informed pricing decisions.

---

## ⚙️ TOOLS & SKILLS

**QUERYING & DATA TRANSFORMATION**

- SQL
- Google BigQuery
- Data Integration
- Data Cleaning
- Feature Engineering

**DATA ANALYSIS**

- Exploratory Data Analysis (EDA)
- KPI Analysis
- Occupancy Analysis
- Pricing Segmentation
- Revenue Trend Analysis
- Descriptive Analysis

**DATA VISUALIZATION & BUSINESS INTELLIGENCE**

- Looker Studio
- Interactive Dashboard Development
- Data Visualization
- Performance Monitoring

**BUSINESS SKILLS**

- Business Insight Generation
- Analytical Problem-Solving
- Data-Driven Decision-Making
- Business Recommendations

---

## 🚀 FUTURE IMPROVEMENTS

Future work could include:

- Incorporating additional Airbnb datasets to investigate market competition and seasonal demand.
- Exploring pricing performance across different neighbourhoods and room types.
- Improving occupancy calculations by distinguishing confirmed reservations from host-blocked dates.
- Integrating verified booking and transaction data to improve revenue accuracy.
- Developing deeper analyses of factors influencing listing performance.

---

## 👩‍💻 PROJECT OUTCOME

This project demonstrates the practical application of SQL, Google BigQuery, and Looker Studio to transform relational datasets into meaningful business insights.

It showcases an end-to-end analytical workflow, from data integration and feature engineering to KPI analysis, dashboard development, and actionable business recommendations.

**CORE SKILLS:** SQL · BIGQUERY · LOOKER STUDIO · DATA ANALYTICS · BUSINESS INTELLIGENCE
