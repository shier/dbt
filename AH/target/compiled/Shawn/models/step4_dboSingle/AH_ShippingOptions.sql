
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([ShippingMethodID] as int) [ShippingMethodId],
	cast([ListingID] as int) [ListingId],
	cast([FirstItEMAmount] as decimal(24,2)) [FirstItemAmount],
	cast([AdditionalItEMAmount] as decimal(24,2)) [AdditionalItemAmount] 
From stg.[AH_ShippingOptions_FinalView]