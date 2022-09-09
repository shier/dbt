{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IntNativeValue] [IntnativeValue],
	[UserId] [UserID],
	[CustomFieldId] [CustomFieldID],
	[BoolNativeValue] [BoolnativeValue],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[DecimalNativeValue] [DecimalnativeValue]
From stg.[AH_Userproperties_Raw]
