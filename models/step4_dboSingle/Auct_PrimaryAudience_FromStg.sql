{{ config(materialized='table',schema='dbo')}}
Select
	cast([PrimaryAudienceID] as int) [PrimaryAudienceID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_PrimaryAudience_FinalView]