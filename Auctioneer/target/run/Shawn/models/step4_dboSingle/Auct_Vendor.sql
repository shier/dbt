
  
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
	cast([VendorID] as int) [VENDORID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([VendorStatusID] as int) [VENDORSTATUSID],
	cast([VendorTypeID] as int) [VENDORTYPEID],
	cast([ProductServiceTypeID] as int) [PRODUCTSERVICETYPEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([LegacyVendorID] as int) [LEGACYVENDORID],
	cast([JobTitle] as nvarchar(4000)) [JOBTITLE] 
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


