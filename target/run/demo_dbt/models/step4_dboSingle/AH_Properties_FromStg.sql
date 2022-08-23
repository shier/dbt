
  
  if object_id ('"dbo"."AH_Properties_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Properties_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Properties_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Properties_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Properties_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Value] as nvarchar(4000)) [Value],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([LineItemID] as int) [LineItemID] 
From stg.[AH_Properties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Properties_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Properties_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Properties_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Properties_FromStg__dbt_tmp_temp_view"
    end


