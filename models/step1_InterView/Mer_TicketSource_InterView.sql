{{ config(materialized='view',schema='stg')}}
Select
	[SOURCEID] [SourceID],
	cast([SOURCE_NAME] as nvarchar(4000)) [Source_Name],
	cast([SOURCE_DESCRIPTION] as nvarchar(4000)) [Source_Description]
From stg.[Mer_TicketSource_Raw]
