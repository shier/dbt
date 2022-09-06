create view "stg"."Auct_CarFeatures_FinalView__dbt_tmp" as
    
Select
	[CarFeatureID],[Active],[WebActive],[Name],[Created] 
From stg.[Auct_CarFeatures_Incr] 
Where [dbt_valid_to] is null
