{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentCompleteStatusID],[Name],[DisplayOrder],[Active] 
From stg.[Auct_ConsignmentCompleteStatus_Incr] 
Where [dbt_valid_to] is null