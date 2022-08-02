
  
  if object_id ('"stg"."Auct_Docket_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Docket_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Docket_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Docket_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Docket_Inter__dbt_tmp_temp_view as
    
Select
	cast(LOTSTATUS as nvarchar(4000)) LotStatus,
	DOCKETID DocketID,
	CONSIGNMENTID ConsignmentID,
	UPDATEEVENTID UpdateEventID,
	LANENUMBER LaneNumber,
	TARGETTIME TargetTime,
	ACTUALTIME ActualTime,
	CREATED Created
From Auct_Docket_Raw
    ');

  CREATE TABLE "stg"."Auct_Docket_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Docket_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Docket_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Docket_Inter__dbt_tmp_temp_view"
    end


