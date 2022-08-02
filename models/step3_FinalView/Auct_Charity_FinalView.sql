{{ config(materialized='view',schema='stg')}}
Select
	[CharityID],[Name],[Description],[Active],[WebSiteURL],[LogoURL] 
From stg.[Auct_Charity_Incr] 
Where [dbt_valid_to] is null