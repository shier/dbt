{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorLeadID] as int) [SponsorLeadID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorLead_FinalView]