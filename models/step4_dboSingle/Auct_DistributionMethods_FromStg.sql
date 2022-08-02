{{ config(materialized='table',schema='dbo')}}
Select
	cast([DistributionMethodID] as int) [DistributionMethodID],
	cast([IsActive] as bit) [IsActive],
	cast([Name] as nvarchar(4000)) [Name],
	cast([FullyQualifiedClassName] as nvarchar(4000)) [FullyQualifiedClassName] 
From stg.[Auct_DistributionMethods_FinalView]