
  
  if object_id ('"stg"."AH_Mediaassets_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Mediaassets_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Mediaassets_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Mediaassets_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Mediaassets_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateStamp] [DaTestamp],
	cast([Type] as nvarchar(4000)) [Type],
	cast([Reference] as nvarchar(4000)) [Reference],
	cast([SHA1] as nvarchar(4000)) [Sha1]
From stg.[AH_Mediaassets_Raw]
    ');

  CREATE TABLE "stg"."AH_Mediaassets_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Mediaassets_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Mediaassets_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Mediaassets_Inter__dbt_tmp_temp_view"
    end


