{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorID] as int) [SponsorID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([SponsorStatusID] as int) [SponsorStatusID],
	cast([SponsorLeadID] as int) [SponsorLeadID],
	cast([TermStart] as datetime) [TermStart],
	cast([TermEnd] as datetime) [TermEnd],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AddressID] as int) [AddressID] 
From stg.[Auct_Sponsor_FinalView]