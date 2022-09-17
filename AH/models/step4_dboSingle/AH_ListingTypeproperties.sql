{{ config(materialized='table',schema='dbo')}}
Select
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Scope] as nvarchar(4000)) [Scope],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalNativeValue],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([ID] as int) [Id],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([BoolnativeValue] as bit) [BoolNativeValue] 
From stg.[AH_ListingTypeproperties_FinalView]