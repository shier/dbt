{{ config(materialized='view',schema='stg')}}
Select
	[Lead_YMM_ID],[UsersID],[Car_Year],[Car_Make],[Car_Model],[Create_Date] 
From [Auct_Lead_YMM_Incr]