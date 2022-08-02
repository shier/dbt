{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ShippingOptionID],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([ShippingMethodID] as int) [ShippingMethodID],
	cast([ListingID] as int) [ListingID],
	cast([FirstItEMAmount] as decimal(24,2)) [FirstItemAmount],
	cast([AdditionalItEMAmount] as decimal(24,2)) [AdditionalItemAmount] 
From stg.[AH_ShippingOptions_FinalView]