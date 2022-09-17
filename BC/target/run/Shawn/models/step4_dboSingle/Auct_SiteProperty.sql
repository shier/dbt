
  
  if object_id ('"dbo"."Auct_SiteProperty__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteProperty__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SiteProperty__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SiteProperty__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SiteProperty__dbt_tmp_temp_view as
    
Select
	cast([SiteID] as int) [SITEID],
	cast([DynamicPropertyID] as int) [DYNAMICPROPERTYID],
	cast([Value] as nvarchar(4000)) [VALUE] 
From stg.[Auct_SiteProperty_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SiteProperty__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SiteProperty__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SiteProperty__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteProperty__dbt_tmp_temp_view"
    end


