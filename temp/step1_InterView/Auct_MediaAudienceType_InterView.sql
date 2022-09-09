{{ config(materialized='view',schema='stg')}}
Select
	[AUDIENCETYPEID] [AudienceTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_MediaAudienceType_Raw]
