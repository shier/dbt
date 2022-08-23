
  
  if object_id ('"stg"."Auct_SponsorDueDates_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorDueDates_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorDueDates_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SponsorDueDates_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SponsorDueDates_Inter__dbt_tmp_temp_view as
    
Select
	[SPONSORDUEDATESID] [SponsorDueDatesID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[DUEDATE] [DueDate],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[AMOUNTDUE] [Amountdue]
From stg.[Auct_SponsorDueDates_Raw]
    ');

  CREATE TABLE "stg"."Auct_SponsorDueDates_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorDueDates_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorDueDates_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorDueDates_Inter__dbt_tmp_temp_view"
    end

