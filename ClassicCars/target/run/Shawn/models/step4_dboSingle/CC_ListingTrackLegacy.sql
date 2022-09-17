
  
  if object_id ('"dbo"."CC_ListingTrackLegacy__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackLegacy__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingTrackLegacy__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingTrackLegacy__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingTrackLegacy__dbt_tmp_temp_view as
    
Select
	cast([ImportID] as nvarchar(4000)) [ImportID],
	cast([ImportSource] as nvarchar(4000)) [ImportSource],
	cast([ImportDate] as datetime) [ImportDate],
	cast([ListingID] as int) [ListingID],
	cast([Views] as int) [Views] 
From stg.[CC_ListingTrackLegacy_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingTrackLegacy__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingTrackLegacy__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingTrackLegacy__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackLegacy__dbt_tmp_temp_view"
    end


