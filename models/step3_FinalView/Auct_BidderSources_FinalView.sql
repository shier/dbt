{{ config(materialized='view',schema='stg')}}
Select
	[BidderSourceID],[Name],[DisplayOrder],[Active] 
From stg.[Auct_BidderSources_Incr] 
Where [dbt_valid_to] is null