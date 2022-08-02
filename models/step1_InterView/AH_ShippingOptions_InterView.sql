{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ShippingMethodId] [ShippingMethodID],
	[ListingId] [ListingID],
	[FirstItemAmount] [FirstItEMAmount],
	[AdditionalItemAmount] [AdditionalItEMAmount]
From stg.[AH_ShippingOptions_Raw]
