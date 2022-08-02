{{ config(materialized='view',schema='stg')}}
Select
	[EmailAddress],[IsActive] 
From stg.[Auct_BidLimitOverageEmail_Incr] 
Where [dbt_valid_to] is null