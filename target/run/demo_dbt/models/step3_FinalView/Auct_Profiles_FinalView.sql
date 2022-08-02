create view "stg"."Auct_Profiles_FinalView__dbt_tmp" as
    
Select
	[ProfileID],[UserName],[ApplicationName],[IsAnonymous],[LastActivityDate],[LastUpdateddate],[IsAuthenticated] 
From stg.[Auct_Profiles_Incr] 
Where [dbt_valid_to] is null
