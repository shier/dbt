{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsActive] [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	[Year] [Year],
	[VehicleCount] [VehicleCount],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_MakeModelcache_Raw]
