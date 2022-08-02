{{ config(materialized='view',schema='stg')}}
Select
	[VENUEID] [VenueID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ADDRESSID] [AddressID],
	cast([SHIPPINGNAME] as nvarchar(4000)) [ShippingName],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[ACTIVE] [Active]
From stg.[Auct_Venue_Raw]
