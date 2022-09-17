{{ config(materialized='table',schema='dbo')}}
Select
	cast([Description] as nvarchar(1000)) [Description],
	cast([ID] as int) [Id] 
From stg.[CC_VehicleType_FinalView]