create view "stg"."Auct_DistributionMethods_FinalView__dbt_tmp" as
    
Select
	[DistributionMethodID],[IsActive],[Name],[FullyQualifiedClassName] 
From stg.[Auct_DistributionMethods_Incr] 
Where [dbt_valid_to] is null
