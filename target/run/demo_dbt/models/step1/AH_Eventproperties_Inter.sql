
  
  if object_id ('"stg"."AH_Eventproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Eventproperties_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Eventproperties_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Eventproperties_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Eventproperties_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[DecimalNativeValue] [DecimalnativeValue],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	[BoolNativeValue] [BoolnativeValue],
	[IntNativeValue] [IntnativeValue],
	[AuctionEventId] [AuctionEventID],
	[CustomFieldId] [CustomFieldID]
From stg.[AH_Eventproperties_Raw]
    ');

  CREATE TABLE "stg"."AH_Eventproperties_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Eventproperties_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Eventproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Eventproperties_Inter__dbt_tmp_temp_view"
    end


