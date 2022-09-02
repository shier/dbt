{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Context] as nvarchar(4000)) [ConText],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([EditMode] as nvarchar(4000)) [EditMode],
	cast([Type] as nvarchar(4000)) [Type],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_Attributes_Raw]
