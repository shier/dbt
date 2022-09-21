
Select
	cast([VenueID] as int) [VENUEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([AddressID] as int) [ADDRESSID],
	cast([ShippingName] as nvarchar(4000)) [SHIPPINGNAME],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Venue_FinalView]