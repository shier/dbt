{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([EmailName] as nvarchar(4000)) [EmailName],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UserID] as int) [UserID] 
From stg.[AH_UserOptOut_FinalView]