
  
  if object_id ('"stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([ProviderName] as nvarchar(4000)) [ProvIDErName],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ListingTypeId] [ListingTypeID],
	[Enabled] [Enabled]
From stg.[AH_ListingTypeFeeprovIDErs_Raw]
    ');

  CREATE TABLE "stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingTypeFeeprovIDErs_Inter__dbt_tmp_temp_view"
    end


