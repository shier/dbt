{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorDueDatesID] as int) [SPONSORDUEDATESID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([DueDate] as datetime) [DUEDATE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Amountdue] as numeric(19,4)) [AMOUNTDUE] 
From stg.[Auct_SponsorDueDates_FinalView]