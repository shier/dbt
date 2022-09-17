
  
  if object_id ('"dbo"."Auct_PropertyType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PropertyType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PropertyType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PropertyType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PropertyType__dbt_tmp_temp_view as
    
Select
	cast([PropertyTypeID] as int) [PROPERTYTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Key] as int) [KEY],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_PropertyType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PropertyType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PropertyType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PropertyType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PropertyType__dbt_tmp_temp_view"
    end


