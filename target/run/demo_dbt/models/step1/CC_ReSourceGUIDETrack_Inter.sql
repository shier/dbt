
  
  if object_id ('"stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ReSourceGUIDETrack_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([ReferringPage] as nvarchar(4000)) [ReferringPage],
	cast([DestinationUrl] as nvarchar(4000)) [DestinationURL],
	cast([AdvertiserName] as nvarchar(4000)) [AdvertiserName],
	[IsActive] [IsActive],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_ReSourceGUIDETrack_Raw]
    ');

  CREATE TABLE "stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ReSourceGUIDETrack_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDETrack_Inter__dbt_tmp_temp_view"
    end


