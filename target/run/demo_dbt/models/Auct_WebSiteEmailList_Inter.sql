
  
  if object_id ('"stg"."Auct_WebSiteEmailList_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebSiteEmailList_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WebSiteEmailList_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_WebSiteEmailList_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_WebSiteEmailList_Inter__dbt_tmp_temp_view as
    
Select
	cast(First_Name as nvarchar(4000)) First_Name,
	cast(Last_Name as nvarchar(4000)) Last_Name,
	cast(EMAIL as nvarchar(4000)) Email,
	cast(Email_Type as nvarchar(4000)) Email_Type
From Auct_WebSiteEmailList_Raw
    ');

  CREATE TABLE "stg"."Auct_WebSiteEmailList_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WebSiteEmailList_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_WebSiteEmailList_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebSiteEmailList_Inter__dbt_tmp_temp_view"
    end


