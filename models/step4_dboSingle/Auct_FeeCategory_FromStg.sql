{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeeCategoryID] as int) [FeeCategoryID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_FeeCategory_FinalView]