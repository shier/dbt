{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Enabled] as bit) [Enabled],
	cast([UserID] as int) [UserID],
	cast([MakeID] as int) [MakeID],
	cast([ModelID] as int) [ModelID],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [Yearto],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_UserAlerts_FinalView]