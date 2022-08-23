
  
  if object_id ('"dbo"."AH_SMStemplates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SMStemplates_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_SMStemplates_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_SMStemplates_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_SMStemplates_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Enabled] as bit) [Enabled],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_SMStemplates_FinalView]
    ');

  CREATE TABLE "dbo"."AH_SMStemplates_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_SMStemplates_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_SMStemplates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SMStemplates_FromStg__dbt_tmp_temp_view"
    end


