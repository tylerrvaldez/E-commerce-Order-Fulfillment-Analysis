# Streamlining-Order-Fulfillment
Data Analysis and Visualization on E-commerce Order Fulfillment Efficiency. The interactive dashboard can be found at (https://public.tableau.com/app/profile/tyler.valdez/viz/EcommerceDataset_17297308296490/Dashboard1)

## Overview
In this analysis, I explore key metrics of order fulfillment, from purchase to delivery, to uncover insights into the efficiency of the e-commerce supply chain. The project aims to provide actionable recommendations to improve processing times, reduce late deliveries, and enhance customer satisfaction. Key areas analyzed include approval time, delivery time, order volume trends, and regional order distribution.

## Project Preview
![Dashboard Preview](Graphs%20and%20Dashboard/Dashboard_Screenshot.png)

## Data Source
The dataset, sourced from Kaggle (https://www.kaggle.com/datasets/bytadit/ecommerce-order-dataset), includes comprehensive details of e-commerce transactions, such as:
- Customer details (region, zip code)
- Order timestamps (purchase, approval, delivery)
- Delivery statuses and timing
- Fulfillment expectations and outcomes

## Project Workflow
1. **Data Cleaning**: Used Python and pandas to handle missing values, standardize date formats, and remove duplicates.
2. **Exploratory Data Analysis (EDA)**: Conducted SQL-based analysis to explore approval and delivery times, calculate percentages of late orders, and analyze order distribution by status and region.
3. **Dashboard Creation**: Built an interactive Tableau dashboard to visualize key insights into order fulfillment.

## Key Insights
- **Average Approval and Delivery Times**: Approval averages around 10 hours, while delivery takes approximately 12 days from approval.
- **Fulfillment Speed**: Over 93% of orders took more than 72 hours for fulfillment.
- **Delivery Success Rate**: 97% of orders were successfully delivered, with only 7% arriving later than the expected date.
- **Order Volume**: Significant volume growth occurred in November 2017, remaining stable afterward.
- **Regional Demand**: Sao Paulo showed the highest concentration of orders, indicating it as a primary market.
