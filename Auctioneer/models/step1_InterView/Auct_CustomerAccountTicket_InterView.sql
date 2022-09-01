{{ config(materialized='view',schema='stg')}}
Select
	[CUSTOMERACCOUNTICKETID] [CustomerAccounTicketID],
	[ACTIVE] [Active],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[AUCTIONID] [AuctionID],
	cast([TICKETNUMBER] as nvarchar(4000)) [TicketNumber],
	[TICKETTYPEID] [TicketTypeID],
	[CREATED] [Created],
	[CREATEDBYUSERID] [CreatedByUserID],
	[QUANTITY] [Quantity],
	cast([COMMENT] as nvarchar(4000)) [Comment]
From stg.[Auct_CustomerAccountTicket_Raw]
