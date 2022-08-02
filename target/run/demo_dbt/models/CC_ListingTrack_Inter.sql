
  
  if object_id ('"stg"."CC_ListingTrack_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrack_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingTrack_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingTrack_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingTrack_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	ListingId ListingID,
	ListingActionId ListingActionID,
	UserId UserID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	cast(ReferringPage as nvarchar(4000)) ReferringPage,
	cast(DataToken as nvarchar(4000)) DataToken,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	IsActive IsActive
From CC_ListingTrack_Raw
    ');

  CREATE TABLE "stg"."CC_ListingTrack_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingTrack_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingTrack_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingTrack_Inter__dbt_tmp_temp_view"
    end


