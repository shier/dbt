{{ config(materialized='view',schema='stg')}}
Select
	[KeyControlID],[Active],[CurrentKeyControlTransactionID],[ConsignmentID] 
From stg.[Auct_KeyControl_Incr] 
Where [dbt_valid_to] is null