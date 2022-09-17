{{ config(materialized='table',schema='dbo')}}
Select
	cast([IsActive] as bit) [ISACTIVE],
	cast([DistributionMethodID] as int) [DISTRIBUTIONMETHODID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([FullyQualifiedClassName] as nvarchar(4000)) [FULLYQUALIFIEDCLASSNAME] 
From stg.[Auct_DistributionMethods_FinalView]