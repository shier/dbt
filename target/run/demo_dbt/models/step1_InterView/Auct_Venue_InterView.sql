create view "stg"."Auct_Venue_InterView__dbt_tmp" as
    
Select
	[VENUEID] [VenueID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ADDRESSID] [AddressID],
	cast([SHIPPINGNAME] as nvarchar(4000)) [ShippingName],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[ACTIVE] [Active]
From stg.[Auct_Venue_Raw]
