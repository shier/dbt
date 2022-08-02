{{ config(materialized='table',schema='dbo')}}
Select
	cast([DistributionTypeID] as int) [DistributionTypeID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_MediaDistrubutionType_FinalView]