{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[CC_EngineHistory_Raw]
