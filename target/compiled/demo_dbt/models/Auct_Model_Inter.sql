
Select
	MODELID ModelID,
	MAKEID MakeID,
	cast(DROPDOWNTEXT as nvarchar(4000)) DropDownText,
	cast(DISPLAYTEXT as nvarchar(4000)) DisplayText,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Model_Raw