
  
  if object_id ('"stg"."Auct_Lead_Categories_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lead_Categories_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Lead_Categories_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Lead_Categories_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Lead_Categories_Inter__dbt_tmp_temp_view as
    
Select
	[LEAD_CATEGORY_ID] [Lead_Category_ID],
	[CARTYPEID] [CarTypeID],
	[USERSID] [UsersID],
	[CREATE_DATE] [Create_Date]
From stg.[Auct_Lead_Categories_Raw]
    ');

  CREATE TABLE "stg"."Auct_Lead_Categories_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Lead_Categories_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Lead_Categories_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lead_Categories_Inter__dbt_tmp_temp_view"
    end

