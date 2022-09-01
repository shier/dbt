
  
  if object_id ('"dbo"."Auct_SiteTypeProperty__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteTypeProperty__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SiteTypeProperty__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SiteTypeProperty__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SiteTypeProperty__dbt_tmp_temp_view as
    
Select
	cast([DynamicPropertyID] as int) [DynamicPropertyID],
	cast([SiteTypeID] as int) [SiteTypeID],
	cast([IsRequired] as int) [IsRequired] 
From stg.[Auct_SiteTypeProperty_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SiteTypeProperty__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SiteTypeProperty__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SiteTypeProperty__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteTypeProperty__dbt_tmp_temp_view"
    end


