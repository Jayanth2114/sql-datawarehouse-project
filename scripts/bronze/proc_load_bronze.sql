/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

create or alter procedure bronze.load_bronze as
begin
	
	begin try
	declare @start_time datetime,@end_time datetime,@batch_start_time datetime,@batch_end_time datetime;
	set @batch_start_time = getdate();
		
		set @start_time = getdate();
		print '================================================';
		print '>>TRUNCATING TABLE bronze.crm_cust_info';
		print '================================================';
		truncate table bronze.crm_cust_info;
		print '================================================';
		print '>>INSERTING DATA INTO TABLE bronze.crm_cust_info';
		print '================================================';
		bulk insert bronze.crm_cust_info
		from 'C:\Users\Jayanth.G\OneDrive\Desktop\SQL Project\sql-data-warehouse-project-main\datasets\source_crm\cust_info.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '================================================';
		print '>>SUCCESSFULLY INSERT DATA INTO THE TABLE';
		print 'Execution time = ' + cast(datediff(second,@start_time,@end_time) as nvarchar(50));
		print '================================================';

		set @start_time = getdate();
		print '================================================';
		print '>>TRUNCATING TABLE bronze.crm_prd_info';
		print '================================================';
		truncate table bronze.crm_prd_info;
		print '================================================';
		print '>>INSERTING DATA INTO TABLE bronze.crm_prd_info';
		print '================================================';

		bulk insert bronze.crm_prd_info
		from 'C:\Users\Jayanth.G\OneDrive\Desktop\SQL Project\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '================================================';
		print '>>SUCCESSFULLY INSERT DATA INTO THE TABLE';
		print 'Execution time = ' + cast(datediff(second,@start_time,@end_time) as nvarchar(50));
		print '================================================';


		set @start_time = getdate();
		print '================================================';
		print '>>TRUNCATING TABLE bronze.crm_sales_details';
		print '================================================';
		truncate table bronze.crm_sales_details;
		print '================================================';
		print '>>INSERTING DATA INTO TABLE bronze.crm_sales_details';
		print '================================================';
		
		bulk insert bronze.crm_sales_details
		from 'C:\Users\Jayanth.G\OneDrive\Desktop\SQL Project\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '================================================';
		print '>>SUCCESSFULLY INSERT DATA INTO THE TABLE';
		print 'Execution time = ' + cast(datediff(second,@start_time,@end_time) as nvarchar(50));
		print '================================================';


		set @start_time = getdate();
		print '================================================';
		print '>>TRUNCATING TABLE bronze.erp_cust_az12';
		print '================================================';
		truncate table bronze.erp_cust_az12;
		print '================================================';
		print '>>INSERTING DATA INTO TABLE bronze.erp_cust_az12';
		print '================================================';
		
		bulk insert bronze.erp_cust_az12
		from 'C:\Users\Jayanth.G\OneDrive\Desktop\SQL Project\sql-data-warehouse-project-main\datasets\source_erp\CUST_AZ12.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '================================================';
		print '>>SUCCESSFULLY INSERT DATA INTO THE TABLE';
		print 'Execution time = ' + cast(datediff(second,@start_time,@end_time) as nvarchar(50));
		print '================================================';


		set @start_time = getdate();
		print '================================================';
		print '>>TRUNCATING TABLE bronze.erp_loc_a101';
		print '================================================';
		truncate table bronze.erp_loc_a101;
		print '================================================';
		print '>>INSERTING DATA INTO TABLE bronze.erp_loc_a101';
		print '================================================';
		
		bulk insert bronze.erp_loc_a101
		from 'C:\Users\Jayanth.G\OneDrive\Desktop\SQL Project\sql-data-warehouse-project-main\datasets\source_erp\LOC_A101.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '================================================';
		print '>>SUCCESSFULLY INSERT DATA INTO THE TABLE';
		print 'Execution time = ' + cast(datediff(second,@start_time,@end_time) as nvarchar(50));
		print '================================================';


		set @start_time = getdate();
		print '================================================';
		print '>>TRUNCATING TABLE bronze.erp_px_cat_g1v2';
		print '================================================';
		truncate table bronze.erp_px_cat_g1v2;
		print '================================================';
		print '>>INSERTING DATA INTO TABLE bronze.erp_px_cat_g1v2';
		print '================================================';
		
		bulk insert bronze.erp_px_cat_g1v2
		from 'C:\Users\Jayanth.G\OneDrive\Desktop\SQL Project\sql-data-warehouse-project-main\datasets\source_erp\PX_CAT_G1V2.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '================================================';
		print '>>SUCCESSFULLY INSERT DATA INTO THE TABLE';
		print 'Execution time = ' + cast(datediff(second,@start_time,@end_time) as nvarchar(50));
		print '================================================';
	set @batch_end_time = getdate();
	print '================================================';
	print '>>SUCCESSFULLY INSERT DATA INTO ALL THE TABLE';
	print 'Execution time = ' + cast(datediff(second,@batch_start_time,@batch_end_time) as nvarchar(50));
	print '================================================';
	end try
	

	begin catch
		print '===================================================='
		print 'ERROR OCCURED DURING LOADING BRONZE LAYER'
		print 'ERROR MESSAGE: ' + error_message();
		print 'ERROR NUMBER: ' + cast(error_number() as nvarchar(50));
		print '===================================================='
	end catch
end
