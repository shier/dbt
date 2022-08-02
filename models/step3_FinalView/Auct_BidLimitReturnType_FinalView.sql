{{ config(materialized='view',schema='stg')}}
Select
	[BidLimitReturnTypeID],[Name],[Active] 
From stg.[Auct_BidLimitReturnType_Incr] 
Where [dbt_valid_to] is null