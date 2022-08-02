create view "stg"."Auct_Tmp_ActiveEmails_FinalView__dbt_tmp" as
    
Select
	[Email],[First_Name],[Last_Name],[Ongage_Status] 
From stg.[Auct_Tmp_ActiveEmails_Incr] 
Where [dbt_valid_to] is null
