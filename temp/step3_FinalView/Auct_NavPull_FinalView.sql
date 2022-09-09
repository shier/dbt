{{ config(materialized='view',schema='stg')}}
Select
	[ID],[DebitAMT],[Amount],[CreditAMT],[PostingDate],[Created],[CustvEndID],[DocNumber],[BankAcctno],[Description],[AuctionID],[ProjectCode],[Status],[Import],[Hidden],[EntryNumber] 
From stg.[Auct_NavPull_Incr] 
Where [dbt_valid_to] is null