
  
  if object_id ('"stg"."Auct_Media_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Media_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Media_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Media_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Media_Inter__dbt_tmp_temp_view as
    
Select
	MEDIATYPEID MediaTypeID,
	UPDATEEVENTID UpdateEventID,
	MEDIAID MediaID,
	CUSTOMERACCOUNTID CustomerAccountID,
	ADDRESSID AddressID,
	CREATED Created,
	cast(CIRCULATION as nvarchar(4000)) Circulation,
	cast(STORYIDEAS as nvarchar(4000)) StoryIdeas
From Auct_Media_Raw
    ');

  CREATE TABLE "stg"."Auct_Media_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Media_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Media_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Media_Inter__dbt_tmp_temp_view"
    end


