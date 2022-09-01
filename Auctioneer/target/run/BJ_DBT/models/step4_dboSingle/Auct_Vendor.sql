
  
  if object_id ('"dbo"."Auct_Vendor__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Vendor__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Vendor__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Vendor__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Vendor__dbt_tmp_temp_view as
    
Select
	cast([VendorID] as int) [VendorID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([VendorStatusID] as int) [VendorStatusID],
	cast([VendorTypeID] as int) [VendorTypeID],
	cast([ProductServiceTypeID] as int) [ProductServiceTypeID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AddressID] as int) [AddressID],
	cast([LegacyVendorID] as int) [LegacyVendorID],
	cast([JobTitle] as nvarchar(4000)) [JobTitle] 
From stg.[Auct_Vendor_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Vendor__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Vendor__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Vendor__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Vendor__dbt_tmp_temp_view"
    end


