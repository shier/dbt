
  
  if object_id ('"stg"."Auct_NavPulLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPulLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavPulLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavPulLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavPulLog_Inter__dbt_tmp_temp_view as
    
Select
	[ID] [ID],
	cast([PROCESSDATE] as nvarchar(4000)) [ProcessDate],
	[RECSPROCESSED] [RecsProcessed],
	[STATUS] [Status],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created]
From stg.[Auct_NavPulLog_Raw]
    ');

  CREATE TABLE "stg"."Auct_NavPulLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavPulLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavPulLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPulLog_Inter__dbt_tmp_temp_view"
    end


