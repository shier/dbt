{{ config(materialized='view',schema='stg')}}
Select
	[KEYCONTROLSTATUSID] [KeyControlStatusID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_KeyControlStatus_Raw]
