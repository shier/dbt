{{ config(materialized='view',schema='stg')}}
Select
	[BIDDERTYPEID] [BidderTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BidderType_Raw]
