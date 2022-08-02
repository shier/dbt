{{ config(materialized='view',schema='stg')}}
Select
	[COMP_CODE] [Comp_Code],
	cast([COMP_NAME] as nvarchar(4000)) [Comp_Name],
	cast([COMP_DESCRIPTION] as nvarchar(4000)) [Comp_Description]
From stg.[Mer_TicketCompCode_Raw]
