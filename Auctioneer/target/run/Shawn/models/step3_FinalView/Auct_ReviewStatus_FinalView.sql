create view "stg"."Auct_ReviewStatus_FinalView__dbt_tmp" as
    
Select
	[ReviewStatusID],[Name] 
From stg.[Auct_ReviewStatus_Incr] 
Where [dbt_valid_to] is null
