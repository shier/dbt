create view "stg"."Auct_Tmp_SEMA_FinalView__dbt_tmp" as
    
Select
	[Email],[First_Name],[Last_Name] 
From stg.[Auct_Tmp_SEMA_Incr] 
Where [dbt_valid_to] is null
