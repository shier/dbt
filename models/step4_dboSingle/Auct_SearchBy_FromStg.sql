{{ config(materialized='table',schema='dbo')}}
Select
	cast([SearchByID] as int) [SearchByID],
	cast([Active] as bit) [Active],
	cast([SearchForID] as int) [SearchForID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[Auct_SearchBy_FinalView]