{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTSTATUSID] [ConsignmentStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ConsignmentStatus_Raw]
