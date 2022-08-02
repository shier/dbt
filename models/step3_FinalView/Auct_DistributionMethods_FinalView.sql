{{ config(materialized='view',schema='stg')}}
Select
	[DistributionMethodID],[IsActive],[Name],[FullyQualifiedClassName] 
From stg.[Auct_DistributionMethods_Incr] 
Where [dbt_valid_to] is null