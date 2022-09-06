create view "stg"."Auct_ProxiBidAuction_FinalView__dbt_tmp" as
    
Select
	[ProxiBidAuctionID],[ProxiBidID],[AuctioneerauctionID],[AuctionCategory] 
From stg.[Auct_ProxiBidAuction_Incr] 
Where [dbt_valid_to] is null
