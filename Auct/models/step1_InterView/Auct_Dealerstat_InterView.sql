{{ config(materialized='view',schema='stg')}}
Select
	[DEALERSTATID] [DealerstatID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Dealerstat_Raw]
