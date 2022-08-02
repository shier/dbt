
  
  if object_id ('"stg"."Auct_Company_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Company_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Company_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Company_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Company_Inter__dbt_tmp_temp_view as
    
Select
	COMPANYID CompanyID,
	INDUSTRYTYPEID IndustryTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(URL as nvarchar(4000)) URL
From Auct_Company_Raw
    ');

  CREATE TABLE "stg"."Auct_Company_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Company_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Company_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Company_Inter__dbt_tmp_temp_view"
    end


