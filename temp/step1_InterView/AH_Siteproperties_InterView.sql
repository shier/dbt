{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[DecimalNativeValue] [DecimalnativeValue],
	[BoolNativeValue] [BoolnativeValue],
	[IntNativeValue] [IntnativeValue],
	[CustomFieldId] [CustomFieldID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_Siteproperties_Raw]
