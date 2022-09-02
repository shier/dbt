
  
  if object_id ('"dbo"."AH_KeyTable__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_KeyTable__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_KeyTable__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_KeyTable__dbt_tmp"
    end


   EXEC('create view dbo.AH_KeyTable__dbt_tmp_temp_view as
    
Select
	cast([NextID] as int) [NextID] 
From stg.[AH_KeyTable_FinalView]
    ');

  CREATE TABLE "dbo"."AH_KeyTable__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_KeyTable__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_KeyTable__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_KeyTable__dbt_tmp_temp_view"
    end


