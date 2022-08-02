{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORDUEDATESID] [SponsorDueDatesID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[DUEDATE] [DueDate],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[AMOUNTDUE] [Amountdue]
From stg.[Auct_SponsorDueDates_Raw]
