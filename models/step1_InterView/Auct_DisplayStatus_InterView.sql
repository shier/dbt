{{ config(materialized='view',schema='stg')}}
Select
	[DISPLAYSTATUSID] [DisplayStatusID],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[Auct_DisplayStatus_Raw]
