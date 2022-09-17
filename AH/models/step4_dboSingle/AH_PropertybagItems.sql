{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([PropertybagID] as int) [PropertyBagId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value] 
From stg.[AH_PropertybagItems_FinalView]