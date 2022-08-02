create view "stg"."Auct_MediaDistrubutionType_FinalView__dbt_tmp" as
    
Select
	[DistributionTypeID],[Name] 
From stg.[Auct_MediaDistrubutionType_Incr] 
Where [dbt_valid_to] is null
