
  
  if object_id ('"dbo"."AH_CategoryCustomFields__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CategoryCustomFields__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CategoryCustomFields__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CategoryCustomFields__dbt_tmp"
    end


   EXEC('create view dbo.AH_CategoryCustomFields__dbt_tmp_temp_view as
    
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [ID],
	cast([CategoryID] as int) [CategoryID],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_CategoryCustomFields_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CategoryCustomFields__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CategoryCustomFields__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CategoryCustomFields__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CategoryCustomFields__dbt_tmp_temp_view"
    end


