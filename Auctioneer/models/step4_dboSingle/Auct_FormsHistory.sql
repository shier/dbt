{{ config(materialized='table',schema='dbo')}}
Select
	cast([FormHistoryID] as int) [FORMHISTORYID],
	cast([FormID] as int) [FORMID],
	cast([FileToken] as nvarchar(4000)) [FILETOKEN],
	cast([ChangeDescription] as nvarchar(4000)) [CHANGEDESCRIPTION],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([CreatedDateTime] as DATETIME) [CREATEDDATETIME] 
From stg.[Auct_FormsHistory_FinalView]