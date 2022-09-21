
  
  if object_id ('"dbo"."Auct_Sponsor__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Sponsor__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Sponsor__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Sponsor__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Sponsor__dbt_tmp_temp_view as
    
Select
	cast([SponsorID] as int) [SPONSORID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([SponsorStatusID] as int) [SPONSORSTATUSID],
	cast([SponsorLeadID] as int) [SPONSORLEADID],
	cast([TermStart] as datetime) [TERMSTART],
	cast([TermEnd] as datetime) [TERMEND],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AddressID] as int) [ADDRESSID] 
From stg.[Auct_Sponsor_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Sponsor__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Sponsor__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Sponsor__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Sponsor__dbt_tmp_temp_view"
    end


