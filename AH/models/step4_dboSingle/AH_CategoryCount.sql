{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([Count] as int) [Count],
	cast([CategoryID] as int) [CategoryId] 
From stg.[AH_CategoryCount_FinalView]