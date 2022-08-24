create view "stg"."AH_ShippingOptions_InterView__dbt_tmp" as
    
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
