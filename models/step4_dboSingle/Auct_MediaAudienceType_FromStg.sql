{{ config(materialized='table',schema='dbo')}}
Select
	cast([AudienceTypeID] as int) [AudienceTypeID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_MediaAudienceType_FinalView]