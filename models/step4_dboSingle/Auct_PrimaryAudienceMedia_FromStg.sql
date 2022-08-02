{{ config(materialized='table',schema='dbo')}}
Select
	cast([PrimaryAudienceMediaID] as int) [PrimaryAudienceMediaID],
	cast([MediaID] as int) [MediaID],
	cast([PrimaryAudienceID] as int) [PrimaryAudienceID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_PrimaryAudienceMedia_FinalView]