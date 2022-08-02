
  
  if object_id ('"stg"."Auct_SiteType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SiteType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SiteType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SiteType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SiteType_Inter__dbt_tmp_temp_view as
    
Select
	[SITETYPEID] [SiteTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([ACTIVEIMAGEURL] as nvarchar(4000)) [ActiveImageURL],
	cast([INACTIVEIMAGEURL] as nvarchar(4000)) [InActiveImageURL],
	[SITECATEGORYID] [SiteCategoryID],
	[CANHAVECHILDREN] [CanHaveChildren],
	cast([RESERVEDIMAGEURL] as nvarchar(4000)) [ReservedImageURL]
From stg.[Auct_SiteType_Raw]
    ');

  CREATE TABLE "stg"."Auct_SiteType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SiteType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SiteType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SiteType_Inter__dbt_tmp_temp_view"
    end


