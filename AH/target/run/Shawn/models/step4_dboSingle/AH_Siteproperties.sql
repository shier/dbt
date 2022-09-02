
  
  if object_id ('"dbo"."AH_Siteproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Siteproperties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Siteproperties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Siteproperties__dbt_tmp"
    end


   EXEC('create view dbo.AH_Siteproperties__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([DecimalnativeValue] as numeric(194)) [DecimalnativeValue],
	cast([BoolnativeValue] as bit) [BoolnativeValue],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_Siteproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Siteproperties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Siteproperties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Siteproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Siteproperties__dbt_tmp_temp_view"
    end


