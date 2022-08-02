
  
  if object_id ('"stg"."AH_Siteproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Siteproperties_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Siteproperties_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Siteproperties_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Siteproperties_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[DecimalNativeValue] [DecimalnativeValue],
	[BoolNativeValue] [BoolnativeValue],
	[IntNativeValue] [IntnativeValue],
	[CustomFieldId] [CustomFieldID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_Siteproperties_Raw]
    ');

  CREATE TABLE "stg"."AH_Siteproperties_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Siteproperties_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Siteproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Siteproperties_Inter__dbt_tmp_temp_view"
    end


