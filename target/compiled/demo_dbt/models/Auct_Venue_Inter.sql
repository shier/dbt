
Select
	VENUEID VenueID,
	ADDRESSID AddressID,
	SHIPPINGADDRESSID ShippingAddressID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(SHIPPINGNAME as nvarchar(4000)) ShippingName
From Auct_Venue_Raw