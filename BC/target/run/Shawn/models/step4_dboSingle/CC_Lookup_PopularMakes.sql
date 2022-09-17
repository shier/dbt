
  
  if object_id ('"dbo"."CC_Lookup_PopularMakes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Lookup_PopularMakes__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Lookup_PopularMakes__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Lookup_PopularMakes__dbt_tmp"
    end


   EXEC('create view dbo.CC_Lookup_PopularMakes__dbt_tmp_temp_view as
    
Select
	cast([Make] as nvarchar(4000)) [Make],
	cast([DateinsertedUTC] as datetime) [DateInsertedUTC] 
From stg.[CC_Lookup_PopularMakes_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Lookup_PopularMakes__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Lookup_PopularMakes__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Lookup_PopularMakes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Lookup_PopularMakes__dbt_tmp_temp_view"
    end


