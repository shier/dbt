
  
  if object_id ('"dbo"."Auct_PackageCarrier__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PackageCarrier__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PackageCarrier__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PackageCarrier__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PackageCarrier__dbt_tmp_temp_view as
    
Select
	cast([PackageCarrierID] as int) [PACKAGECARRIERID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([TrackingURL] as nvarchar(4000)) [TRACKINGURL],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_PackageCarrier_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PackageCarrier__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PackageCarrier__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PackageCarrier__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PackageCarrier__dbt_tmp_temp_view"
    end


