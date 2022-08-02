{{ config(materialized='table',schema='dbo')}}
Select
	cast([SourceID] as int) [TicketSourceID],
	cast([Source_Name] as varchar(500)) [SourceName],
	cast([Source_Description] as varchar(8000)) [SourceDescription] 
From stg.[Mer_TicketSource_FinalView]