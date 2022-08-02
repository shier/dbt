{{ config(materialized='table',schema='dbo')}}
Select
	cast([FormHistoryID] as int) [FormHistoryID],
	cast([FormID] as int) [FormID],
	cast([FileToken] as nvarchar(4000)) [FileToken],
	cast([ChangeDescription] as nvarchar(4000)) [ChangeDescription],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([CreatedDateTime] as DATETIME) [CreatedDateTime] 
From stg.[Auct_FormsHistory_FinalView]