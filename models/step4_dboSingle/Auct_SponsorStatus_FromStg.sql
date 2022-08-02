{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorStatusID] as int) [SponsorStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorStatus_FinalView]