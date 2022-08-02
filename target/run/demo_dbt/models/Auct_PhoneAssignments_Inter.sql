
  
  if object_id ('"stg"."Auct_PhoneAssignments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhoneAssignments_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PhoneAssignments_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PhoneAssignments_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_PhoneAssignments_Inter__dbt_tmp_temp_view as
    
Select
	cast(ISDEFAULT as nvarchar(4000)) IsDefault,
	CREATED Created,
	UPDATEEVENTID UpdateEventID,
	PHONEASSIGNMENTID PhoneAssignmentID,
	CUSTOMERACCOUNTID CustomerAccountID,
	PHONEID PhoneID,
	PHONESTATUSID PhoneStatusID,
	PHONETYPEID PhoneTypeID
From Auct_PhoneAssignments_Raw
    ');

  CREATE TABLE "stg"."Auct_PhoneAssignments_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PhoneAssignments_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PhoneAssignments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhoneAssignments_Inter__dbt_tmp_temp_view"
    end


