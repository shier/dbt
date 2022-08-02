
  
  if object_id ('"stg"."Auct_BlockBID_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockBID_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockBID_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BlockBID_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BlockBID_Inter__dbt_tmp_temp_view as
    
Select
	[BLOCKBIDID] [BlockBidID],
	[ASKINGBID] [AskingBID],
	[HIGHBID] [HighBID],
	[DOCKETID] [DocketID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[STARTTIME] [StartTime],
	[ENDTIME] [EndTime]
From stg.[Auct_BlockBID_Raw]
    ');

  CREATE TABLE "stg"."Auct_BlockBID_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockBID_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockBID_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockBID_Inter__dbt_tmp_temp_view"
    end


