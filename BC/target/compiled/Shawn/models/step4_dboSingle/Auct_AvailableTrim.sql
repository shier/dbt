
Select
	cast([AvailableTrimID] as int) [AVAILABLETRIMID],
	cast([CarTrimID] as int) [CARTRIMID],
	cast([CarModelID] as int) [CARMODELID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableTrim_FinalView]