{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactOrganizationID] as int) [ContactOrganizationID],
	cast([OrganizationID] as int) [OrganizationID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactOrganization_FinalView]