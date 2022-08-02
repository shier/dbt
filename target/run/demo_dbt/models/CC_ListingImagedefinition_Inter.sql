
  
  if object_id ('"stg"."CC_ListingImagedefinition_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImagedefinition_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingImagedefinition_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingImagedefinition_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingImagedefinition_Inter__dbt_tmp_temp_view as
    
Select
	cast(ListingImageFieldName as nvarchar(4000)) ListingImageFieldName,
	cast(FileNameFragment as nvarchar(4000)) FileNamefragment,
	ShouldPopulateInitially ShouldpopulateInitially,
	ListingImageDefinitionPK ListingImagedefinitionpk,
	ImageWidth ImageWidth,
	ImageHeight ImageHeight,
	Quality Quality
From CC_ListingImagedefinition_Raw
    ');

  CREATE TABLE "stg"."CC_ListingImagedefinition_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingImagedefinition_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingImagedefinition_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImagedefinition_Inter__dbt_tmp_temp_view"
    end


