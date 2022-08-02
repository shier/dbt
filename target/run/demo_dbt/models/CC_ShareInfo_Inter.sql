
  
  if object_id ('"stg"."CC_ShareInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ShareInfo_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ShareInfo_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ShareInfo_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ShareInfo_Inter__dbt_tmp_temp_view as
    
Select
	Longitude Longitude,
	Latitude Latitude,
	cast(Browser as nvarchar(4000)) Browser,
	cast(AppUsed as nvarchar(4000)) Appused,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	cast(UserEmail as nvarchar(4000)) UserEmail,
	cast(IpAddress as nvarchar(4000)) IpAddress,
	CreateDateUTC CreateDateUTC,
	ListingFK Listingfk,
	ShareInfoId ShareInfoID,
	UserId UserID
From CC_ShareInfo_Raw
    ');

  CREATE TABLE "stg"."CC_ShareInfo_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ShareInfo_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ShareInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ShareInfo_Inter__dbt_tmp_temp_view"
    end


