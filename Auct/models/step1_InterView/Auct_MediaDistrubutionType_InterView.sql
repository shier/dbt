{{ config(materialized='view',schema='stg')}}
Select
	[DISTRIBUTIONTYPEID] [DistributionTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_MediaDistrubutionType_Raw]
