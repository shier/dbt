
Select
	[CustomerAccounTicketID],[CustomerAccountID],[AuctionID],[TicketTypeID],[CreatedByUserID],[Quantity],[Active],[Created],[TicketNumber],[Comment] 
From stg.[Auct_CustomerAccountTicket_Incr] 
Where [dbt_valid_to] is null