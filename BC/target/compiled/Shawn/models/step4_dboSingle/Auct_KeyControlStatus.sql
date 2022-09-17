
Select
	cast([Active] as bit) [ACTIVE],
	cast([KeyControlStatusID] as int) [KEYCONTROLSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_KeyControlStatus_FinalView]