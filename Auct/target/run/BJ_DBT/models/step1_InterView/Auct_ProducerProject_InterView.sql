create view "dbo_stg"."Auct_ProducerProject_InterView__dbt_tmp" as
    
Select
	[PRODUCERPROJECTID] [ProducerProjectID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DATECREATED] [DateCreated],
	[ACTIVE] [Active]
From stg.[Auct_ProducerProject_Raw]
