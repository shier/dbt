{{ config(materialized='table',schema='dbo')}}
Select
	cast([PropertyTypeID] as int) [PropertyTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Key] as int) [Key],
	cast([Active] as int) [Active] 
From stg.[Auct_PropertyType_FinalView]