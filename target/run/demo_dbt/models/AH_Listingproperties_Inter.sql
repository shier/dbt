
  
  if object_id ('"stg"."AH_Listingproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listingproperties_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Listingproperties_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Listingproperties_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Listingproperties_Inter__dbt_tmp_temp_view as
    
Select
	cast(StringnativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumnativeValue as nvarchar(4000)) EnumnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	DecimalnativeValue DecimalnativeValue,
	ID ID,
	IntnativeValue IntnativeValue,
	ListingID ListingID,
	CustomFieldID CustomFieldID,
	Createdon Createdon,
	Updatedon Updatedon,
	Deletedon Deletedon,
	DateTimenativeValue DateTimenativeValue,
	BoolnativeValue BoolnativeValue
From AH_Listingproperties_Raw
    ');

  CREATE TABLE "stg"."AH_Listingproperties_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Listingproperties_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Listingproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listingproperties_Inter__dbt_tmp_temp_view"
    end


