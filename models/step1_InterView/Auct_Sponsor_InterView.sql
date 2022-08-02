{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORID] [SponsorID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[SPONSORSTATUSID] [SponsorStatusID],
	[SPONSORLEADID] [SponsorLeadID],
	[TERMSTART] [TermStart],
	[TERMEND] [TermEnd],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ADDRESSID] [AddressID]
From stg.[Auct_Sponsor_Raw]
