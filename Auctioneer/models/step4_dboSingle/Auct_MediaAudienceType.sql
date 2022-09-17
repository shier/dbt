{{ config(materialized='table',schema='dbo')}}
Select
	cast([AudienceTypeID] as int) [AUDIENCETYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_MediaAudienceType_FinalView]