# Retail-Store-Data-Management
This project is a complete SQL-based retail store case study featuring store details, sales, products, and summary tables. It demonstrates advanced SQL operations like MERGE, multi-table updates, row count control, profit/loss classification, and summary reports. Ideal for practicing SQL for retail analytics and reporting.


This project simulates data management operations for a retail store using SQL. It demonstrates realistic business operations such as product updates, profit/loss reporting, sales analysis, and retail summary creation.

---

##  Project Highlights:
- Retail store database simulation with realistic data.
- Key operations covered:
  - Creating multiple tables
  - Data insertion
  - Store-wise sales updates
  - Profit/Loss classification on sales data
  - Summary reporting
  - MERGE operation (for product updates)

---

##  Tables Created:
1. **store_detail:**  
   Stores detailed information about stores, such as:
   - Store ID, Name, Sales, Order Number, Location, City, Pincode  

2. **summarys:**  
   Holds summarized category data per store.

3. **sales:**  
   Holds weekly sales data with additional Profit & Loss status.

4. **source_table / target_table:**  
   Simulates product movement from source to target via MERGE statements.

---

##  Key Operations Performed:
- Data Insertion into all tables with multiple rows.
- Row-specific data insertion into `store_detail`.
- Row Count Limiting (`SET ROWCOUNT`) for batch updates in `sales` table.
- Conditional Update:  
  - Marking sales as "Profit" or "Loss".
- Summary table update using subquery (`UPDATE ... SET ... WHERE EXISTS`).
- Product MERGE operation:
  - Insert missing products from `source_table` to `target_table`.

---

##  Notable SQL Features Used:
- `CREATE TABLE`
- `INSERT INTO`
- `UPDATE ... SET ... WHERE`
- `MERGE INTO` (UPSERT Operation)
- `SET ROWCOUNT` for limiting updates
- `JOIN` & `EXISTS` subqueries
- Transaction-safe updates

---

##  Project Structure:

Retail-Store-SQL-Data-Management
┣ 📜01_Create_Tables.sql -- Table creation scripts
┣ 📜02_Insert_Data.sql -- Insert store data, product data
┣ 📜03_Update_and_Merge.sql -- Update summary, profits, merge products
┣ 📜README.md -- Full documentation


---

## 🚀 How to Use:
1. Execute `01_Create_Tables.sql` to create all tables.
2. Run `02_Insert_Data.sql` to insert the sample data.
3. Run `03_Update_and_Merge.sql` for updates, classifications, and merging.
4. Modify the data or queries for further experimentation.

---

## 📊 Sample Business Use Cases:
- Identify high-performing stores.
- Classify stores based on profits and losses.
- Summarize order categories per store.
- Merge product catalogs from external sources.

---

##  Tools:
- SQL Server (Compatible with MySQL/PostgreSQL with syntax tweaks)
- SQL Clients (SSMS, MySQL Workbench, DBeaver)

---


