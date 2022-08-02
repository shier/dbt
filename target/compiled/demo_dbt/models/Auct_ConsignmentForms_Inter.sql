
Select
	cast(FORMNAME as nvarchar(4000)) FormName,
	cast(FORMKEY as nvarchar(4000)) FormKey,
	cast(FILEPATH as nvarchar(4000)) FilePath,
	CONSIGNMENTFORMID ConsignmentFormID,
	CONSIGNMENTID ConsignmentID,
	USERID UserID,
	SIGNSTARTEDDATETIME SignStartedDateTime,
	SIGNFINISHEDDATETIME SignfinishedDateTime
From Auct_ConsignmentForms_Raw