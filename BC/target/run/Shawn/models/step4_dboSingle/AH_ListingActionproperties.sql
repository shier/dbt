
  
  if object_id ('"dbo"."AH_ListingActionproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingActionproperties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingActionproperties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingActionproperties__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingActionproperties__dbt_tmp_temp_view as
    
Select
	cast([BoolnativeValue] as bit) [BoolNativeValue],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalNativeValue],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([ID] as int) [Id],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([ListingActionID] as int) [ListingActionId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_ListingActionproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingActionproperties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingActionproperties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingActionproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingActionproperties__dbt_tmp_temp_view"
    end


