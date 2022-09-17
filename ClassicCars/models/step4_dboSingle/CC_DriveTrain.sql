{{ config(materialized='table',schema='dbo')}}
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([ID] as int) [Id] 
From stg.[CC_DriveTrain_FinalView]