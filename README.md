
# ✈️ High Clouds Airlines – Business Intelligence Dashboards

This repository contains interactive dashboards built using **Tableau**, **Power BI**, and **Excel** for analyzing airline performance data as part of the High Clouds Airlines case study. Also **MySQL** was used to do all the KPI's and verify the data

---

## 📊 Objective

To evaluate and visualize key performance metrics for High Clouds Airlines, aiding stakeholders in identifying areas of improvement and making data-driven strategic decisions.

---

## 🛠️ Tools Used

- **Tableau**
- **Power BI**
- **Excel**
- **SQL** (for query-based data verification)

---

## 📁 KPIs Required
- Calcuate the following fields from the Year	Month (#)	Day  fields ( First Create a Date Field from Year , Month , Day fields)"
  - A.Year
  - B.Month no
  - C.Month full name
  - D.Quarter(Q1,Q2,Q3,Q4)
  - E.Year-Month (YYYY-MMM)
  - F.Weekday No
  - G.Weekday Name
  - H.Financial Month
  - I.Financial Quarter 
- Find the load Factor percentage on a yearly , Quarterly , Monthly basis (Transported passengers / Available seats)
- Find the load Factor percentage on a Carrier Name basis (Transported passengers / Available seats)
- Identify Top 10 Carrier Names based passengers preference 
- Display top Routes (From-to City) based on Number of Flights 
- Identify the how much load factor is occupied on Weekend vs Weekdays.
- Identify number of flights based on Distance group
- Build a Dashboard to support your Analysis



---

## 📊 Dashboards Overview

### 1. Tableau Dashboard

**Features:**
- Yearly, Monthly and Quarterly-wise Load-Factor % Bar Chart which can be changed with the use of a **parameter**.
- Load Factor % based on Carrier Name (Horizontal Bar Chart) and Weekend/Weekday (Donut Chart).
- Top 10 routes (From-to-City) and Carriers based on passenger preference (Bubble Chart)
- Total flights based on distance group with the help of joins (TreeMap)
- Interactive filters for selecting **Month**,**Year** and **Quarter**
- Added Dashboard actions that make the dashboard more interactive where clicking on any graph applies filters
- Added a Show/Hide Button that can Show/Hide the Filter panel when required 

---

### 2. Power BI Dashboard

**Features:**
- KPI visuals for passenger count, total distance flown, total no of flights and total airtime in Hrs .
- Yearly, Monthly and Quarterly-wise Load-Factor % Bar Chart which can be changed with the use of **bookmark**.
- Top 10 routes (From-to-City) and Carriers based on passenger preference (Bar and Area-Line Chart)
- Load Factor % based on Weekend/Weekday (Donut Chart).
- Total flights based on distance group with the help of Merging in **Power Query editor** (TreeMap)
- Slicers for dynamic filtering by **Month**,**Year**,**Quarter** and **Weekend/Weekday**.
- Added a **Clear all slicers** button for easy usage

---

### 3. Excel Dashboard

**Features:**
- KPI visuals for passenger count, total distance flown, total no of flights and total airtime in Hrs.
- Top 10 routes (From-to-City) and Carriers based on passenger preference (Bar Chart)
- Load Factor % based on Weekend/Weekday (Pie Chart),carrier name(Bar Chart) and also Year-Wise Load Factor % (Bar chart).
- Total flights based on distance group with the help of **Power Query editor** (Line Chart)
- Slicers for dynamic filtering by **Year**,**Quarter** and **Weekend/Weekday**.

---

## 💻 MySQL Usage

All KPIs and calculated columns used in this project were **derived, verified, and tested using MySQL** prior to visualizing the data in Tableau, Power BI, and Excel. SQL was used to:

- Generate custom date fields (date, month_name, quarter, etc.)
- Compute Load Factor % across time and dimensions
- Extract top 10 carriers and routes
- Segment data by distance group
- Compare weekday vs weekend trends

---

## 🔍 Key Insights from Airline KPIs

**Seasonal Demand Trends**
- Quarterly/Monthly load factors reveal peak travel periods (e.g., Q2/Q3 for summer vacations).
- Financial quarters highlight business vs. leisure travel patterns.
**Carrier Performance Benchmarking**
- Top 10 carriers by passengers expose market leaders.
- Load factor comparisons show operational efficiency gaps between carriers.
**Route Optimization Opportunities**
- Busiest routes (From-To cities) indicate high-demand corridors for capacity expansion.
- Low load factor routes may need schedule adjustments or promotions.
**Weekend vs. Weekday Travel Behavior**
- Higher weekend load factors suggest leisure-dominated routes.
- Weekday consistency reflects business travel reliability.
**Distance-Based Fleet Strategy**
- Flight concentration in specific distance groups (e.g., 500–1,000 miles) guides aircraft allocation.
**Financial Planning**
- Financial month/quarter trends help align marketing budgets with high-demand periods.

---
## 📸 **Screenshots**

**Excel Dashboard**
---
![image](https://github.com/user-attachments/assets/57c20e6f-4332-4db7-a276-fcf66b8f067f)

---
**Tableau Dashboard**
---
![image](https://github.com/user-attachments/assets/1b7c14cd-695e-4cd8-9933-819ba6a46af2)

---
**Power BI Dashboard**
---
![image](https://github.com/user-attachments/assets/d30833b8-9153-4a41-8f03-b0ca9aab007d)

---
**SQL Screenshots**
---


### **1. SQL KPI 1**
---
![SQL KPI 1](SQL/SQL%20KPI1.png)

---
### **2. SQL KPI 2**
---
![SQL KPI 2.1](SQL/SQL%20KPI2.1.png)
![SQL KPI 2.2](SQL/SQL%20KPI2.2.png)
![SQL KPI 2.3](SQL/SQL%20KPI2.3.png)

---
### **3. SQL KPI 3**
---
![SQL KPI 3](SQL/SQL%20KPI3.png)

---

### **4. SQL KPI 4**
---
![SQL KPI 4](SQL/SQL%20KPI4.png)

---

### **5. SQL KPI 5**
---
![SQL KPI 5](SQL/SQL%20KPI5.png)

---

### **6. SQL KPI 6**
---
![SQL KPI 6](SQL/SQL%20KPI6.png)

---
### **7. SQL KPI 7**
---
![SQL KPI 7](SQL/SQL%20KPI7.png)
