
Select
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([ID] as int) [ShippingOptionID],
	cast([ShippingMethodID] as int) [ShippingMethodID],
	cast([ListingID] as int) [ListingID],
	cast([FirstItEMAmount] as decimal(24,2)) [FirstItemAmount],
	cast([AdditionalItEMAmount] as decimal(24,2)) [AdditionalItemAmount] 
From stg.[AH_ShippingOptions_FinalView]