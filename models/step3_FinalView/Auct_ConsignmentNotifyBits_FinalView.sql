{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentNotifyBit],[Name],[Active] 
From stg.[Auct_ConsignmentNotifyBits_Incr] 
Where [dbt_valid_to] is null