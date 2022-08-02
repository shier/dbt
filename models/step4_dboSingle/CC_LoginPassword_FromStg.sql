{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([Password] as nvarchar(4000)) [Password],
	cast([UserID] as int) [UserID],
	cast([AccessfailedCount] as int) [AccessfailedCount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([LockOutEnd] as datetime) [LockOutEnd] 
From stg.[CC_LoginPassword_FinalView]