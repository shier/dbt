
  
  if object_id ('"dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingTrackRuns_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([StartID] as int) [StartID],
	cast([EndID] as int) [EndID],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_ListingTrackRuns_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingTrackRuns_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackRuns_FromStg__dbt_tmp_temp_view"
    end


