{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Name] as nvarchar(500)) [Name] 
From stg.[AH_Roles_FinalView]