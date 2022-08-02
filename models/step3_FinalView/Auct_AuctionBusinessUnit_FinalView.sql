{{ config(materialized='view',schema='stg')}}
Select
	[BusinessUnitID],[BusinessUnit],[City],[State],[County],[BusinessUnitDisplay],[Created] 
From stg.[Auct_AuctionBusinessUnit_Incr] 
Where [dbt_valid_to] is null