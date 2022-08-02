{{ config(materialized='table',schema='dbo')}}
Select
	cast([NodeTreeTypeID] as int) [NodeTreeTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active] 
From stg.[Auct_NodeTreeType_FinalView]