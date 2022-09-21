
  
  if object_id ('"dbo"."Auct_SiteType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SiteType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SiteType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SiteType__dbt_tmp_temp_view as
    
Select
	cast([SiteTypeID] as int) [SITETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ActiveImageURL] as nvarchar(4000)) [ACTIVEIMAGEURL],
	cast([InActiveImageURL] as nvarchar(4000)) [INACTIVEIMAGEURL],
	cast([SiteCategoryID] as int) [SITECATEGORYID],
	cast([CanHaveChildren] as int) [CANHAVECHILDREN],
	cast([ReservedImageURL] as nvarchar(4000)) [RESERVEDIMAGEURL] 
From stg.[Auct_SiteType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SiteType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SiteType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SiteType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SiteType__dbt_tmp_temp_view"
    end


