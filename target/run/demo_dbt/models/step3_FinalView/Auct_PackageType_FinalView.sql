create view "stg"."Auct_PackageType_FinalView__dbt_tmp" as
    
Select
	[PackageTypeID],[Active],[Name] 
From stg.[Auct_PackageType_Incr] 
Where [dbt_valid_to] is null
