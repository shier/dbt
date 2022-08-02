{{ config(materialized='table',schema='dbo')}}
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