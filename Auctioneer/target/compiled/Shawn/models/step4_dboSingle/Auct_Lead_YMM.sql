
Select
	cast([Lead_YMM_ID] as int) [LEAD_YMM_ID],
	cast([UsersID] as int) [USERSID],
	cast([Car_Year] as nvarchar(4000)) [CAR_YEAR],
	cast([Car_Make] as nvarchar(4000)) [CAR_MAKE],
	cast([Car_Model] as nvarchar(4000)) [CAR_MODEL],
	cast([Create_Date] as datetime) [CREATE_DATE] 
From stg.[Auct_Lead_YMM_FinalView]