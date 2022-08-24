create view "stg"."AH_CategoryCount_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[Count] [Count],
	[CategoryId] [CategoryID]
From stg.[AH_CategoryCount_Raw]
