
  
  if object_id ('"dbo"."Auct_SponSorTickets__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponSorTickets__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponSorTickets__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponSorTickets__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponSorTickets__dbt_tmp_temp_view as
    
Select
	cast([SponSorTicketsID] as int) [SponSorTicketsID],
	cast([SponSorTicketsAMT] as numeric(19,4)) [SponSorTicketsAMT],
	cast([TicketTypeID] as int) [TicketTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([NumberRange] as nvarchar(4000)) [NumberRange] 
From stg.[Auct_SponSorTickets_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponSorTickets__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponSorTickets__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponSorTickets__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponSorTickets__dbt_tmp_temp_view"
    end


