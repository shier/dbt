{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([DecimalnativeValue] as numeric(194)) [DecimalnativeValue],
	cast([BoolnativeValue] as bit) [BoolnativeValue],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_Siteproperties_FinalView]