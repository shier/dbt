{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Count] as int) [Count],
	cast([CategoryID] as int) [CategoryID] 
From stg.[AH_CategoryCount_FinalView]