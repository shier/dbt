{{ config(materialized='table',schema='dbo')}}
Select
	cast([GlCategoryID] as int) [GLCategoryID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_GlCategory_FinalView]