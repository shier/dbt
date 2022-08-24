
  
  if object_id ('"dbo"."Auct_DynamicProperty__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DynamicProperty__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DynamicProperty__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DynamicProperty__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DynamicProperty__dbt_tmp_temp_view as
    
Select
	cast([DynamicPropertyID] as int) [DynamicPropertyID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([DataClass] as nvarchar(4000)) [DataClass] 
From stg.[Auct_DynamicProperty_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DynamicProperty__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DynamicProperty__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DynamicProperty__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DynamicProperty__dbt_tmp_temp_view"
    end


