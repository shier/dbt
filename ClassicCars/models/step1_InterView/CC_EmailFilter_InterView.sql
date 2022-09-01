{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[FilterCodeId] [FilterCodeID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive],
	cast([FilterType] as nvarchar(4000)) [FilterType],
	cast([FilterValue] as nvarchar(4000)) [FilterValue]
From stg.[CC_EmailFilter_Raw]
