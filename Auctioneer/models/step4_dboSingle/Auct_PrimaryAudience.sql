{{ config(materialized='table',schema='dbo')}}
Select
	cast([PrimaryAudienceID] as int) [PRIMARYAUDIENCEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PrimaryAudience_FinalView]