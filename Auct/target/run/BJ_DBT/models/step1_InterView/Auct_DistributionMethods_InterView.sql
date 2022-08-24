create view "dbo_stg"."Auct_DistributionMethods_InterView__dbt_tmp" as
    
Select
	[DISTRIBUTIONMETHODID] [DistributionMethodID],
	[ISACTIVE] [IsActive],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([FULLYQUALIFIEDCLASSNAME] as nvarchar(4000)) [FullyQualifiedClassName]
From stg.[Auct_DistributionMethods_Raw]
