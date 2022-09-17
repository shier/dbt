{{ config(materialized='table',schema='dbo')}}
Select
	cast([GlCategoryID] as int) [GLCATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_GlCategory_FinalView]