
  
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
	DecimalNativeValue DecimalnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(StringNativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumNativeValue as nvarchar(4000)) EnumnativeValue,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateTimeNativeValue DateTimenativeValue,
	BoolNativeValue BoolnativeValue,
	Id ID,
	IntNativeValue IntnativeValue,
	AuctionEventId AuctionEventID,
	CustomFieldId CustomFieldID
From AH_Eventproperties_Raw
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


