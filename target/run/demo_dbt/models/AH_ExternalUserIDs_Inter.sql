
  
  if object_id ('"stg"."AH_ExternalUserIDs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ExternalUserIDs_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ExternalUserIDs_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ExternalUserIDs_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ExternalUserIDs_Inter__dbt_tmp_temp_view as
    
Select
	cast(ProviderName as nvarchar(4000)) ProvIDErName,
	cast(ProviderUserId as nvarchar(4000)) ProvIDErUserID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	LocalUserId LocalUserID
From AH_ExternalUserIDs_Raw
    ');

  CREATE TABLE "stg"."AH_ExternalUserIDs_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ExternalUserIDs_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ExternalUserIDs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ExternalUserIDs_Inter__dbt_tmp_temp_view"
    end


