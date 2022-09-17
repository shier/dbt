{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProducerProjectID] as int) [PRODUCERPROJECTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_ProducerProject_FinalView]