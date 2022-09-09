{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Processor] as nvarchar(4000)) [Processor],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	[Amount] [Amount],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ListingTypeId] [ListingTypeID],
	[EventId] [EventID]
From stg.[AH_Feeproperties_Raw]
