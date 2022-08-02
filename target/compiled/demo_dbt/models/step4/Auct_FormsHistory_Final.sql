
Select
	[FormHistoryID],[FileToken],[ChangeDescription],[CreatedByUserID],[FormID],[CreatedDateTime] 
From stg.[Auct_FormsHistory_Incr] 
Where [dbt_valid_to] is null