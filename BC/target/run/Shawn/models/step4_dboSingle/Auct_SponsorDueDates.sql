
  
  if object_id ('"dbo"."Auct_SponsorDueDates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorDueDates__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponsorDueDates__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponsorDueDates__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponsorDueDates__dbt_tmp_temp_view as
    
Select
	cast([SponsorDueDatesID] as int) [SPONSORDUEDATESID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([DueDate] as datetime) [DUEDATE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Amountdue] as numeric(19,4)) [AMOUNTDUE] 
From stg.[Auct_SponsorDueDates_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponsorDueDates__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponsorDueDates__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponsorDueDates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorDueDates__dbt_tmp_temp_view"
    end


