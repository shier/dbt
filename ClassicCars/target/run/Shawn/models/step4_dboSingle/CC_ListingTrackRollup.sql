
  
  if object_id ('"dbo"."CC_ListingTrackRollup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackRollup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingTrackRollup__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingTrackRollup__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingTrackRollup__dbt_tmp_temp_view as
    
Select
	cast([ListingID] as int) [ListingID],
	cast([Year] as int) [Year],
	cast([Month] as int) [Month],
	cast([Day] as int) [Day],
	cast([Views] as int) [Views],
	cast([BatchDate] as datetime) [BatchDate],
	cast([BatchID] as nvarchar(4000)) [BatchID] 
From stg.[CC_ListingTrackRollup_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingTrackRollup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingTrackRollup__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingTrackRollup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackRollup__dbt_tmp_temp_view"
    end


