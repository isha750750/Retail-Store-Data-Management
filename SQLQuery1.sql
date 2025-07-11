CREATE TABLE store_detail (
    store INT PRIMARY KEY,
    store_name varchar(100),
    sales int,
    order_no int,
	store_loaction varchar(100),
	city varchar(100),
	pincode int
);-- to create the table 

INSERT INTO store_detail VALUES
(1, 'Walmart', 374, 246, 'Bentonville, Ark', 'Montgomery', 36104),
(2, 'The Kroger Co', 115, 240, 'Cincinnati', 'Juneau', 99801),
(3, 'Costco', 93, 567, 'Issaquah, Wash', 'Phoenix', 85001),
(4, 'The Home Depot', 91, 639, 'Atlanta', 'Little Rock', 72201),
(5, 'Walgreens Boots Alliance', 82, 484, 'Deerfield, Ill', 'Sacramento', 95814),
(6, 'CVS Health Corporation', 79, 890, 'Woonsocket, R.I', 'Denver', 80202),
(7, 'Target', 71, 251, 'Minneapolis', 'Hartford', 06103),
(8, 'Lowe Companies', 63, 308, 'Mooresville, N.C', 'Dover', 19901),
(9, 'Albertsons Companies', 59, 454, 'Boise, Idaho', 'Tallahassee', 32301),
(10, 'Royal Ahold Delhaize USA', 43, 254, 'Carlisle, Pa', 'Atlanta', 30303);
-- for inserting the value in int varchar and date fromate 


INSERT INTO store_detail(Store, Store_name, Sales, Order_No, store_loaction, City, pincode)
VALUES (11, 'Jack and Jones', 525, 148, 'Amblipura', 'Bangalore', 560102);
--insert individual values or to ADD the pericular file 


select * from store_detail --to see the out putt in console also can select specific store 
--storename loacation and name of c=table 

-- Create the summary table
CREATE TABLE summarys (
    store INT PRIMARY KEY,
    category INT UNIQUE
);

-- Insert six records into the summary table
INSERT INTO summarys (store) VALUES (1), (2), (3), (4), (5), (6);

-- Update the category column of the summary table with Order_no from store_details
UPDATE summarys 
SET category = (SELECT Order_no FROM store_detail WHERE store_detail.store = summarys.store)
WHERE EXISTS (SELECT Order_no FROM store_detail WHERE store_detail.store = summarys.store);


CREATE TABLE sales (
    -- Define columns here
    Weekly_Sales DECIMAL(10, 2),
    -- Other columns...
);





-- Add columns Profit and Loss to the sales table
ALTER TABLE sales
ADD Profit VARCHAR(5),
    Loss VARCHAR(5);

-- Set row count limit to 10
SET ROWCOUNT 10;

-- Update Profit and Loss columns based on the condition
UPDATE sales
SET Profit = 'YES',
    Loss = 'NO'
WHERE Weekly_Sales > 30000;

-- Reset row count limit
SET ROWCOUNT 0;

-- Select all data from the sales table
SELECT * FROM sales;





-- Create the source_table
CREATE TABLE source_table (
    Productid INT,
    Product_name VARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Insert values into the source_table
INSERT INTO source_table (Productid, Product_name, Price)
VALUES 
    (1, 'Product A', 10.50),
    (2, 'Product B', 15.75),
    (3, 'Product C', 20.00),
    (4, 'Product D', 12.25),
    (5, 'Product E', 18.99);

-- Create the target_table
CREATE TABLE target_table (
    Productid INT,
    Product_name VARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Insert values into the target_table
INSERT INTO target_table (Productid, Product_name, Price)
VALUES 
    (101, 'Target Product 1', 25.00),
    (102, 'Target Product 2', 30.50),
    (103, 'Target Product 3', 15.99),
    (104, 'Target Product 4', 22.75),
    (105, 'Target Product 5', 18.49);


	MERGE INTO TargetProducts AS Target
USING SourceTable AS Source
ON Source.ProductID = Target.ProductID
WHEN NOT MATCHED BY Target THEN
INSERT (ProductID, ProductName, Price) 
VALUES (Source.ProductID, Source.ProductName, Source.Price);


ajdcniudbciudjkmdancoieqc x
