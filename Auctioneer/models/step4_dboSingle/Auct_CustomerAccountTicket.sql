{{ config(materialized='table',schema='dbo')}}
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