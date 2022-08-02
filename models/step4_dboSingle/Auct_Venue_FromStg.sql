{{ config(materialized='table',schema='dbo')}}
Select
	cast([VenueID] as int) [VenueID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AddressID] as int) [AddressID],
	cast([ShippingName] as nvarchar(4000)) [ShippingName],
	cast([ShippingAddressID] as int) [ShippingAddressID],
	cast([Active] as int) [Active] 
From stg.[Auct_Venue_FinalView]