{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([PropertybagID] as int) [PropertybagID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value] 
From stg.[AH_PropertybagItems_FinalView]