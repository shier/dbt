{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[BoolNativeValue] [BoolnativeValue],
	[DecimalNativeValue] [DecimalnativeValue],
	[CustomFieldId] [CustomFieldID],
	[IntNativeValue] [IntnativeValue],
	[ListingActionId] [ListingActionID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_ListingActionproperties_Raw]
