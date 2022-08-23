
  
  if object_id ('"dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponsorDueDates_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SponsorDueDatesID] as int) [SponsorDueDatesID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([DueDate] as datetime) [DueDate],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Amountdue] as numeric(19,4)) [Amountdue] 
From stg.[Auct_SponsorDueDates_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponsorDueDates_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorDueDates_FromStg__dbt_tmp_temp_view"
    end


