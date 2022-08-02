{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	[DecimalnativeValue] [DecimalnativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[Createdon] [CreatedOn],
	[Updatedon] [UpdatedOn],
	[Deletedon] [DeletedOn],
	[DateTimenativeValue] [DateTimenativeValue],
	[BoolnativeValue] [BoolnativeValue],
	[IntnativeValue] [IntnativeValue],
	[ListingID] [ListingID],
	[CustomFieldID] [CustomFieldID]
From stg.[AH_Listingproperties_Raw]
