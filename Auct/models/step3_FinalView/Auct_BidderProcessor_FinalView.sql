{{ config(materialized='view',schema='stg')}}
Select
	[BidderProcessorID],[Name],[ClassName] 
From stg.[Auct_BidderProcessor_Incr] 
Where [dbt_valid_to] is null