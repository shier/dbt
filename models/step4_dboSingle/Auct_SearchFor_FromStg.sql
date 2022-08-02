{{ config(materialized='table',schema='dbo')}}
Select
	cast([SearchForID] as int) [SearchForID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_SearchFor_FinalView]