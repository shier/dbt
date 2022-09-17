{{ config(materialized='table',schema='dbo')}}
Select
	cast([Name] as nvarchar(500)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([ID] as int) [Id],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_MediaMetaData_FinalView]