
  
  if object_id ('"dbo"."AH_ListingTypeproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingTypeproperties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingTypeproperties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingTypeproperties__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingTypeproperties__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Scope] as nvarchar(4000)) [Scope],
	cast([DecimalnativeValue] as numeric(194)) [DecimalnativeValue],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([BoolnativeValue] as bit) [BoolnativeValue] 
From stg.[AH_ListingTypeproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingTypeproperties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingTypeproperties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingTypeproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingTypeproperties__dbt_tmp_temp_view"
    end


