{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProducerProjectID] as int) [ProducerProjectID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DateCreated] as datetime) [DateCreated],
	cast([Active] as int) [Active] 
From stg.[Auct_ProducerProject_FinalView]