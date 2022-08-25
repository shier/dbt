{{ config(materialized='view',schema='stg')}}
Select
	[AuctioneerTestID],[PostDate],[PostUser],[Function_C] as [Function],[Operations],[Observations],[Comments],[CompletionDate] 
From stg.[Auct_AuctioneerTest_Incr] 
Where [dbt_valid_to] is null