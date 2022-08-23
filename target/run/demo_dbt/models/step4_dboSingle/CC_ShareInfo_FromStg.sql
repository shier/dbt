
  
  if object_id ('"dbo"."CC_ShareInfo_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ShareInfo_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ShareInfo_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ShareInfo_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ShareInfo_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ShareInfoID] as int) [ID],
	cast([Browser] as nvarchar(500)) [Browser],
	cast([Appused] as nvarchar(200)) [AppUsed],
	cast([UserAgent] as nvarchar(500)) [UserAgent],
	cast([UserEmail] as nvarchar(500)) [UserEmail],
	cast([IpAddress] as nvarchar(50)) [IPAddress],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude],
	cast([CreateDateUTC] as datetime) [CreatedUTC],
	cast([UserID] as int) [UserID],
	cast([ListingFK] as int) [ListingID] 
From stg.[CC_ShareInfo_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ShareInfo_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ShareInfo_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ShareInfo_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ShareInfo_FromStg__dbt_tmp_temp_view"
    end


