{{ config(materialized='view',schema='stg')}}
Select
	[LEAD_YMM_ID] [Lead_YMM_ID],
	[USERSID] [UsersID],
	cast([CAR_YEAR] as nvarchar(4000)) [Car_Year],
	cast([CAR_MAKE] as nvarchar(4000)) [Car_Make],
	cast([CAR_MODEL] as nvarchar(4000)) [Car_Model],
	[CREATE_DATE] [Create_Date]
From stg.[Auct_Lead_YMM_Raw]
