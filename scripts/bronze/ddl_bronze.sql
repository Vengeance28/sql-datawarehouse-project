/*
================================================================
DDL Script: Create Bronze Tables
================================================================
Script Purpose:
  This script creates tables in the bronze schema, dropping existing tables if they already exist
  Run this script tp re_define the DDL structure of bronze Tables
================================================================
*/


--Checks if the table exists in the database, if it does, it is dropped then created again
IF OBJECT_ID ('bronze.crm_cust_info', 'U') IS NOT NULL  
	DROP TABLE bronze.crm_cust_info;

--create table
Create table bronze.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(10),
	cst_gndr NVARCHAR (10),
	cst_creare_date DATE
);

IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
Create table bronze.crm_prd_info(
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR (50),
	prd_cost INT,
	prd_line NVARCHAR(20),
	prd_start_dt DATE,
	prd_end_dt DATE
);

IF OBJECT_ID ('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
Create table bronze.crm_sales_details(
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

IF OBJECT_ID ('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
Create Table bronze.erp_cust_az12(
	cid NVARCHAR(50),
	bdate DATE,
	gen NVARCHAR(10)
);

IF OBJECT_ID ('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
Create Table bronze.erp_loc_a101(
	cid NVARCHAR (50),
	cntry NVARCHAR (20)
);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;
Create Table bronze.erp_px_cat_g1v2(
	id NVARCHAR(20),
	cat NVARCHAR(20),
	subcat NVARCHAR(20),
	maintenance NVARCHAR(10)
);





