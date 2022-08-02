
Select
	cast(TITLE as nvarchar(4000)) Title,
	cast(CATEGORY as nvarchar(4000)) Category,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	REPORTID ReportID,
	USERID UserID
From Auct_ReportUser_Raw