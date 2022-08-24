{{ config(materialized='view',schema='stg')}}
Select
	[PaymentOverride_ID],[ConsignmentID],[ApproverUserID],[RequestUserID],[Description],[Created] 
From stg.[Auct_PaymentOverride_Incr] 
Where [dbt_valid_to] is null