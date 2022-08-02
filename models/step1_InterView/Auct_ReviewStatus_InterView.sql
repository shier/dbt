{{ config(materialized='view',schema='stg')}}
Select
	[REVIEWSTATUSID] [ReviewStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ReviewStatus_Raw]
