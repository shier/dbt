
  
  if object_id ('"dbo"."Auct_Site__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Site__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Site__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Site__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Site__dbt_tmp_temp_view as
    
Select
	cast([SiteID] as int) [SiteID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParentSiteID] as int) [ParentSiteID],
	cast([VenueID] as int) [VenueID],
	cast([SiteTypeID] as int) [SiteTypeID],
	cast([Active] as int) [Active] 
From stg.[Auct_Site_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Site__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Site__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Site__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Site__dbt_tmp_temp_view"
    end


