
  
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
	cast([SponsorID] as int) [SponsorID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([SponsorStatusID] as int) [SponsorStatusID],
	cast([SponsorLeadID] as int) [SponsorLeadID],
	cast([TermStart] as datetime) [TermStart],
	cast([TermEnd] as datetime) [TermEnd],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AddressID] as int) [AddressID] 
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


