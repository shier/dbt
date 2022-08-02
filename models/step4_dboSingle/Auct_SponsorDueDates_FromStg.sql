{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorDueDatesID] as int) [SponsorDueDatesID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([DueDate] as datetime) [DueDate],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Amountdue] as numeric(19,4)) [Amountdue] 
From stg.[Auct_SponsorDueDates_FinalView]