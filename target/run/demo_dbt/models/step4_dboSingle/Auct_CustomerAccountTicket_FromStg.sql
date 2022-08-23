
  
  if object_id ('"dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CustomerAccountTicket_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CustomerAccounTicketID] as int) [CustomerAccounTicketID],
	cast([Active] as bit) [Active],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AuctionID] as int) [AuctionID],
	cast([TicketNumber] as nvarchar(4000)) [TicketNumber],
	cast([TicketTypeID] as int) [TicketTypeID],
	cast([Created] as DATETIME) [Created],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([Quantity] as int) [Quantity],
	cast([Comment] as nvarchar(4000)) [Comment] 
From stg.[Auct_CustomerAccountTicket_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CustomerAccountTicket_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CustomerAccountTicket_FromStg__dbt_tmp_temp_view"
    end


