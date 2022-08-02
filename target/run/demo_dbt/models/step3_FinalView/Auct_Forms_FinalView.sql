create view "stg"."Auct_Forms_FinalView__dbt_tmp" as
    
Select
	[FormID],[Active],[FileName],[DepartmentID],[DisplayName],[Description] 
From stg.[Auct_Forms_Incr] 
Where [dbt_valid_to] is null
