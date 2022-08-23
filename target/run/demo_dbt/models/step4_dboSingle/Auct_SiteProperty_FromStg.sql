
  
  if object_id ('"dbo"."Auct_SiteProperty_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteProperty_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SiteProperty_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SiteProperty_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SiteProperty_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SiteID] as int) [SiteID],
	cast([DynamicPropertyID] as int) [DynamicPropertyID],
	cast([Value] as nvarchar(4000)) [Value] 
From stg.[Auct_SiteProperty_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SiteProperty_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SiteProperty_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SiteProperty_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteProperty_FromStg__dbt_tmp_temp_view"
    end


