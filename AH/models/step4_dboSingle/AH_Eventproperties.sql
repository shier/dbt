{{ config(materialized='table',schema='dbo')}}
Select
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalNativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([BoolnativeValue] as bit) [BoolNativeValue],
	cast([ID] as int) [Id],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([AuctionEventID] as int) [AuctionEventId],
	cast([CustomFieldID] as int) [CustomFieldId] 
From stg.[AH_Eventproperties_FinalView]