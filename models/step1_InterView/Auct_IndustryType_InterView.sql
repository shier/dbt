{{ config(materialized='view',schema='stg')}}
Select
	[INDUSTRYTYPEID] [IndustryTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_IndustryType_Raw]
