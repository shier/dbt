
  
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
	[ID] [ID],
	[DecimalnativeValue] [DecimalnativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[Createdon] [CreatedOn],
	[Updatedon] [UpdatedOn],
	[Deletedon] [DeletedOn],
	[DateTimenativeValue] [DateTimenativeValue],
	[BoolnativeValue] [BoolnativeValue],
	[IntnativeValue] [IntnativeValue],
	[ListingID] [ListingID],
	[CustomFieldID] [CustomFieldID]
From stg.[AH_Listingproperties_Raw]
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


