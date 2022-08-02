
  
  if object_id ('"stg"."Auct_SMSNotificationBit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SMSNotificationBit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SMSNotificationBit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SMSNotificationBit_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SMSNotificationBit_Inter__dbt_tmp_temp_view as
    
Select
	cast(DESCRIPTION as nvarchar(4000)) Description,
	NOTIFICATIONBITID NotificationBitID
From Auct_SMSNotificationBit_Raw
    ');

  CREATE TABLE "stg"."Auct_SMSNotificationBit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SMSNotificationBit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SMSNotificationBit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SMSNotificationBit_Inter__dbt_tmp_temp_view"
    end


