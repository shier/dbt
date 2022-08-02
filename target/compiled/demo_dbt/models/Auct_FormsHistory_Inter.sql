
Select
	cast(FILETOKEN as nvarchar(4000)) FileToken,
	cast(CHANGEDESCRIPTION as nvarchar(4000)) ChangeDescription,
	CREATEDBYUSERID CreatedByUserID,
	FORMHISTORYID FormHistoryID,
	FORMID FormID,
	CREATEDDATETIME CreatedDateTime
From Auct_FormsHistory_Raw