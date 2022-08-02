{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([FilterCodeID] as int) [FilterCodeID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([FilterType] as nvarchar(4000)) [FilterType],
	cast([FilterValue] as nvarchar(4000)) [FilterValue] 
From stg.[CC_EmailFilter_FinalView]