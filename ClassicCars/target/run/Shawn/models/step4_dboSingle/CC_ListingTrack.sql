
  
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
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([ListingActionID] as int) [ListingActionID],
	cast([UserID] as int) [UserID],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate],
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


