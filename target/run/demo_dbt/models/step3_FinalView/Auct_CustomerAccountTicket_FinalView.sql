create view "stg"."Auct_CustomerAccountTicket_FinalView__dbt_tmp" as
    
Select
	[CustomerAccounTicketID],[Active],[CustomerAccountID],[AuctionID],[TicketNumber],[TicketTypeID],[Created],[CreatedByUserID],[Quantity],[Comment] 
From stg.[Auct_CustomerAccountTicket_Incr] 
Where [dbt_valid_to] is null
