
  
  if object_id ('"stg"."Auct_Charity_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charity_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Charity_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Charity_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Charity_Inter__dbt_tmp_temp_view as
    
Select
	[CHARITYID] [CharityID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[ACTIVE] [Active],
	cast([WEBSITEURL] as nvarchar(4000)) [WebSiteURL],
	cast([LOGOURL] as nvarchar(4000)) [LogoURL]
From stg.[Auct_Charity_Raw]
    ');

  CREATE TABLE "stg"."Auct_Charity_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Charity_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Charity_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charity_Inter__dbt_tmp_temp_view"
    end


