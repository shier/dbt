{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentID],[CharityID],[Active] 
From stg.[Auct_Charity_Consignment_Incr] 
Where [dbt_valid_to] is null