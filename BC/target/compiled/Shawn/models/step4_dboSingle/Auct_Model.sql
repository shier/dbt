
Select
	cast([ModelID] as int) [MODELID],
	cast([DropDownText] as nvarchar(4000)) [DROPDOWNTEXT],
	cast([DisplayText] as nvarchar(4000)) [DISPLAYTEXT],
	cast([MakeID] as int) [MAKEID],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_Model_FinalView]