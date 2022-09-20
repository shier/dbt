
  
  if object_id ('"dbo"."CC_ReSourceGUIDETrack__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReSourceGUIDETrack__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ReSourceGUIDETrack__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ReSourceGUIDETrack__dbt_tmp"
    end


   EXEC('create view dbo.CC_ReSourceGUIDETrack__dbt_tmp_temp_view as
    
Select
	cast([ReferringPage] as nvarchar(4000)) [ReferringPage],
	cast([DestinationURL] as nvarchar(4000)) [DestinationUrl],
	cast([AdvertiserName] as nvarchar(4000)) [AdvertiserName],
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_ReSourceGUIDETrack_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ReSourceGUIDETrack__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ReSourceGUIDETrack__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ReSourceGUIDETrack__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReSourceGUIDETrack__dbt_tmp_temp_view"
    end


