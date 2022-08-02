
Select
	CUSTOMERACCOUNTICKETID CustomerAccounTicketID,
	CUSTOMERACCOUNTID CustomerAccountID,
	AUCTIONID AuctionID,
	TICKETTYPEID TicketTypeID,
	CREATEDBYUSERID CreatedByUserID,
	QUANTITY Quantity,
	ACTIVE Active,
	CREATED Created,
	cast(TICKETNUMBER as nvarchar(4000)) TicketNumber,
	cast(COMMENT as nvarchar(4000)) Comment
From Auct_CustomerAccountTicket_Raw