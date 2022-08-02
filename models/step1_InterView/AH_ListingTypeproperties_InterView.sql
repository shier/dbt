{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Scope] as nvarchar(4000)) [Scope],
	[DecimalNativeValue] [DecimalnativeValue],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[IntNativeValue] [IntnativeValue],
	[CustomFieldId] [CustomFieldID],
	[ListingTypeId] [ListingTypeID],
	[BoolNativeValue] [BoolnativeValue]
From stg.[AH_ListingTypeproperties_Raw]
