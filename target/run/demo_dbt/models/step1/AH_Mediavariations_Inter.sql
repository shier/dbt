
  
  if object_id ('"stg"."AH_Mediavariations_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Mediavariations_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Mediavariations_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Mediavariations_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Mediavariations_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[MediaAssetId] [MediaassetID],
	[MediaId] [MediaID],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[AH_Mediavariations_Raw]
    ');

  CREATE TABLE "stg"."AH_Mediavariations_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Mediavariations_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Mediavariations_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Mediavariations_Inter__dbt_tmp_temp_view"
    end


