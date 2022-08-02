
  
  if object_id ('"stg"."Auct_AuthenticStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuthenticStatus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuthenticStatus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuthenticStatus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuthenticStatus_Inter__dbt_tmp_temp_view as
    
Select
	[AUTHENTICSTATUSID] [AuthenticStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([BIDGENERATORTEXT] as nvarchar(4000)) [BidGeneratorText],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AuthenticStatus_Raw]
    ');

  CREATE TABLE "stg"."Auct_AuthenticStatus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuthenticStatus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuthenticStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuthenticStatus_Inter__dbt_tmp_temp_view"
    end


