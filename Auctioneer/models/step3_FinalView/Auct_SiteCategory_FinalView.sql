{{ config(materialized='view',schema='stg')}}
Select
	[SiteCategoryID],[Name],[FeeCategoryID] 
From stg.[Auct_SiteCategory_Incr] 
Where [dbt_valid_to] is null