{{ config(materialized='table',schema='dbo')}}
Select
	cast([Lead_YMM_ID] as int) [Lead_YMM_ID],
	cast([UsersID] as int) [UsersID],
	cast([Car_Year] as nvarchar(4000)) [Car_Year],
	cast([Car_Make] as nvarchar(4000)) [Car_Make],
	cast([Car_Model] as nvarchar(4000)) [Car_Model],
	cast([Create_Date] as datetime) [Create_Date] 
From stg.[Auct_Lead_YMM_FinalView]