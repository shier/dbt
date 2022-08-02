{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[Count] [Count],
	[CategoryId] [CategoryID]
From stg.[AH_CategoryCount_Raw]
