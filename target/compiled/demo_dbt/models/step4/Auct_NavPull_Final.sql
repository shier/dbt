
Select
	[ID],[AuctionID],[Status],[EntryNumber],[Amount],[CreditAMT],[DebitAMT],[PostingDate],[Created],[Hidden],[CustvEndID],[DocNumber],[BankAcctno],[Description],[ProjectCode],[Import] 
From stg.[Auct_NavPull_Incr] 
Where [dbt_valid_to] is null