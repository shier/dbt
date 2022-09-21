
  
  if object_id ('"dbo"."Auct_CustomerAccountTicket__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CustomerAccountTicket__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CustomerAccountTicket__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CustomerAccountTicket__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CustomerAccountTicket__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([CustomerAccounTicketID] as int) [CUSTOMERACCOUNTICKETID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([TicketNumber] as nvarchar(4000)) [TICKETNUMBER],
	cast([TicketTypeID] as int) [TICKETTYPEID],
	cast([Created] as DATETIME) [CREATED],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([Quantity] as int) [QUANTITY],
	cast([Comment] as nvarchar(4000)) [COMMENT] 
From stg.[Auct_CustomerAccountTicket_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CustomerAccountTicket__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CustomerAccountTicket__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CustomerAccountTicket__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CustomerAccountTicket__dbt_tmp_temp_view"
    end


