{{ config(materialized='view',schema='stg')}}
Select
	[FEEPAYERID] [FeePayerID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_FeePayer_Raw]
