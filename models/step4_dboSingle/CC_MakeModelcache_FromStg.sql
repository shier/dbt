{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Year] as int) [Year],
	cast([VehicleCount] as int) [VehicleCount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_MakeModelcache_FinalView]