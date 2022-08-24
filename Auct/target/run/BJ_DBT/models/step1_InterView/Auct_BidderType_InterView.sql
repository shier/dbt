create view "dbo_stg"."Auct_BidderType_InterView__dbt_tmp" as
    
Select
	[BIDDERTYPEID] [BidderTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BidderType_Raw]
