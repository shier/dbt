{{ config(materialized='view',schema='stg')}}
Select
	[SourceID],[Source_Name],[Source_Description] 
From stg.[Mer_TicketSource_Incr] 
Where [dbt_valid_to] is null