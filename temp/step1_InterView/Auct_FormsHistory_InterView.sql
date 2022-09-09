{{ config(materialized='view',schema='stg')}}
Select
	[FORMHISTORYID] [FormHistoryID],
	[FORMID] [FormID],
	cast([FILETOKEN] as nvarchar(4000)) [FileToken],
	cast([CHANGEDESCRIPTION] as nvarchar(4000)) [ChangeDescription],
	[CREATEDBYUSERID] [CreatedByUserID],
	[CREATEDDATETIME] [CreatedDateTime]
From stg.[Auct_FormsHistory_Raw]
