{{ config(materialized='view',schema='stg')}}
Select
	[PackageTypeID],[Active],[Name] 
From stg.[Auct_PackageType_Incr] 
Where [dbt_valid_to] is null