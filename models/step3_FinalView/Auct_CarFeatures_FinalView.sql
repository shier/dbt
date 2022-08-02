{{ config(materialized='view',schema='stg')}}
Select
	[CarFeatureID],[Active],[WebActive],[Name],[Created] 
From stg.[Auct_CarFeatures_Incr] 
Where [dbt_valid_to] is null