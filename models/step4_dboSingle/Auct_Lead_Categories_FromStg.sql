{{ config(materialized='table',schema='dbo')}}
Select
	cast([Lead_Category_ID] as int) [Lead_Category_ID],
	cast([CarTypeID] as int) [CarTypeID],
	cast([UsersID] as int) [UsersID],
	cast([Create_Date] as datetime) [Create_Date] 
From stg.[Auct_Lead_Categories_FinalView]