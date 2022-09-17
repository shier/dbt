
  
  if object_id ('"dbo"."AH_Decorations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Decorations__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Decorations__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Decorations__dbt_tmp"
    end


   EXEC('create view dbo.AH_Decorations__dbt_tmp_temp_view as
    
Select
	cast([PayToproceed] as bit) [PayToproceed],
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ValIDFields] as nvarchar(4000)) [ValIDFields],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name],
	cast([FormatString] as nvarchar(4000)) [FormatString],
	cast([Amount] as numeric(19,4)) [Amount] 
From stg.[AH_Decorations_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Decorations__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Decorations__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Decorations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Decorations__dbt_tmp_temp_view"
    end


