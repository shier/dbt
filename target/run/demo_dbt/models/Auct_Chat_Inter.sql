
  
  if object_id ('"stg"."Auct_Chat_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Chat_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Chat_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Chat_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Chat_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	CHATID ChatID,
	TOUSERID ToUserID,
	FROMUSERSID FromUsersID,
	UPDATEEVENTID UpdateEventID,
	cast(MESSAGE as nvarchar(4000)) Message
From Auct_Chat_Raw
    ');

  CREATE TABLE "stg"."Auct_Chat_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Chat_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Chat_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Chat_Inter__dbt_tmp_temp_view"
    end


