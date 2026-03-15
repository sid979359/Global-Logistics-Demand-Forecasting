# Global Logistics & Demand Forecasting (Big Data Project)

## Project Overview
This project analyzes large-scale logistics shipment data to evaluate delivery performance, warehouse activity, and shipment trends.

A synthetic dataset of **5 million shipment records** was generated and analyzed using **Python, SQL, and Power BI** to simulate a real-world supply chain analytics workflow.

The goal of the project is to demonstrate how large logistics datasets can be processed and converted into actionable insights.

---

## Tools & Technologies
- Python – Data generation and preprocessing
- SQL (MySQL) – Data cleaning and analytics queries
- Power BI – Data visualization and dashboard creation

---

## Dataset
- Total Records: **5,000,000 shipments**
- Dataset Size: **~179 MB**

### Dataset Fields
- `shipment_id` – Unique shipment identifier  
- `route_id` – Logistics route identifier  
- `warehouse_id` – Warehouse location ID  
- `distance_km` – Shipment distance  
- `eta_days` – Estimated time of arrival  
- `ata_days` – Actual time of arrival  
- `shipment_date` – Shipment date  

The dataset was generated using Python to simulate real logistics shipment data.

---

## Data Processing Steps

### 1. Data Generation
A large dataset was generated using Python to simulate shipment activity.

### 2. Data Cleaning (SQL)
Basic data quality checks were performed:
- Null value detection
- Duplicate record detection
- Delivery delay analysis

Delivery delay formula:
Delay= ATA-ETA

Interpretation:
- Negative → Early delivery
- Zero → On-time delivery
- Positive → Late delivery

---

## SQL Analysis

### Route Delay Analysis
Identifies routes with the highest average delivery delay.

### Warehouse Shipment Volume
Calculates shipment volume handled by each warehouse.

### Shipment Trend Analysis
Tracks shipment activity over time.

---

## Power BI Dashboard

The Power BI dashboard visualizes logistics performance using three key charts:

1. **Top Delayed Routes** – Average delay by route  
2. **Warehouse Shipment Volume** – Shipments handled by each warehouse  
3. **Daily Shipment Trend** – Shipment activity over time  

---

## Project Structure

---

## Key Insights
- Certain routes show higher delivery delays.
- Shipment distribution varies across warehouses.
- Shipment activity fluctuates across dates.

These insights help logistics teams identify inefficiencies and improve supply chain operations.

---

## Conclusion
This project demonstrates how large logistics datasets can be analyzed using Python, SQL, and Power BI to generate operational insights for logistics and supply chain management.
