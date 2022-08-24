{{ config(materialized='view',schema='stg')}}
Select
	[FormHistoryID],[FormID],[FileToken],[ChangeDescription],[CreatedByUserID],[CreatedDateTime] 
From stg.[Auct_FormsHistory_Incr] 
Where [dbt_valid_to] is null