{{ config(materialized='view',schema='stg')}}
Select
	[BCPaymentTypeID],[Name] 
From stg.[Auct_BCPaymentType_Incr] 
Where [dbt_valid_to] is null