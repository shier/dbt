
  
  if object_id ('"stg"."Auct_Lead_YMM_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lead_YMM_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Lead_YMM_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Lead_YMM_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Lead_YMM_Inter__dbt_tmp_temp_view as
    
Select
	[LEAD_YMM_ID] [Lead_YMM_ID],
	[USERSID] [UsersID],
	cast([CAR_YEAR] as nvarchar(4000)) [Car_Year],
	cast([CAR_MAKE] as nvarchar(4000)) [Car_Make],
	cast([CAR_MODEL] as nvarchar(4000)) [Car_Model],
	[CREATE_DATE] [Create_Date]
From stg.[Auct_Lead_YMM_Raw]
    ');

  CREATE TABLE "stg"."Auct_Lead_YMM_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Lead_YMM_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Lead_YMM_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lead_YMM_Inter__dbt_tmp_temp_view"
    end


