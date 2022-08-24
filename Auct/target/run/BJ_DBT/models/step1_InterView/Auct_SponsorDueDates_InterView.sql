create view "dbo_stg"."Auct_SponsorDueDates_InterView__dbt_tmp" as
    
Select
	[SPONSORDUEDATESID] [SponsorDueDatesID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[DUEDATE] [DueDate],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[AMOUNTDUE] [Amountdue]
From stg.[Auct_SponsorDueDates_Raw]
