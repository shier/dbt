create view "stg"."Auct_Sponsor_InterView__dbt_tmp" as
    
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
