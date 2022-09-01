{{ config(materialized='view',schema='stg')}}
Select
	[CarCreditID],[BlockSaleID],[Created],[UpdateEventID],[AmountAdjusted] 
From stg.[Auct_CarCredit_Incr] 
Where [dbt_valid_to] is null