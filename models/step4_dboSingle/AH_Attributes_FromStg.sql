{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ConText] as nvarchar(4000)) [ConText],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([EditMode] as nvarchar(4000)) [EditMode],
	cast([Type] as nvarchar(4000)) [Type],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Attributes_FinalView]