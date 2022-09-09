create view "stg"."Auct_Lead_YMM_FinalView__dbt_tmp" as
    
Select
	[Lead_YMM_ID],[UsersID],[Car_Year],[Car_Make],[Car_Model],[Create_Date] 
From [Auct_Lead_YMM_Incr] 
Where [dbt_valid_to] is null
