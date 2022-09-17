
  
  if object_id ('"dbo"."CC_ListingTrack__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrack__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingTrack__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingTrack__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingTrack__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([ListingActionID] as int) [ListingActionId],
	cast([UserID] as int) [UserId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([ReferringPage] as nvarchar(500)) [ReferringPage],
	cast([DataToken] as uniqueidentifier) [DataToken],
	cast([UserAgent] as nvarchar(500)) [UserAgent] 
From stg.[CC_ListingTrack_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingTrack__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingTrack__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingTrack__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrack__dbt_tmp_temp_view"
    end


