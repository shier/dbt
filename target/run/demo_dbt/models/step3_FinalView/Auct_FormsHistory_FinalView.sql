create view "stg"."Auct_FormsHistory_FinalView__dbt_tmp" as
    
Select
	[FormHistoryID],[FormID],[FileToken],[ChangeDescription],[CreatedByUserID],[CreatedDateTime] 
From stg.[Auct_FormsHistory_Incr] 
Where [dbt_valid_to] is null
