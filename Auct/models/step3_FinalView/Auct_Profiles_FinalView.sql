{{ config(materialized='view',schema='stg')}}
Select
	[ProfileID],[UserName],[ApplicationName],[IsAnonymous],[LastActivityDate],[LastUpdateddate],[IsAuthenticated] 
From stg.[Auct_Profiles_Incr] 
Where [dbt_valid_to] is null