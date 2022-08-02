
Select
	LEAD_YMM_ID Lead_YMM_ID,
	USERSID UsersID,
	CREATE_DATE Create_Date,
	cast(CAR_YEAR as nvarchar(4000)) Car_Year,
	cast(CAR_MAKE as nvarchar(4000)) Car_Make,
	cast(CAR_MODEL as nvarchar(4000)) Car_Model
From Auct_YMM_Raw