{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([StringNativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumNativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[DecimalNativeValue] [DecimalnativeValue],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateTimeNativeValue] [DateTimenativeValue],
	[BoolNativeValue] [BoolnativeValue],
	[IntNativeValue] [IntnativeValue],
	[AuctionEventId] [AuctionEventID],
	[CustomFieldId] [CustomFieldID]
From stg.[AH_Eventproperties_Raw]
