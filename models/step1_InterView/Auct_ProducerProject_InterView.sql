{{ config(materialized='view',schema='stg')}}
Select
	[PRODUCERPROJECTID] [ProducerProjectID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DATECREATED] [DateCreated],
	[ACTIVE] [Active]
From stg.[Auct_ProducerProject_Raw]
