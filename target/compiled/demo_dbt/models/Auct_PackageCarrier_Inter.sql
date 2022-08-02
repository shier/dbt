
Select
	PACKAGECARRIERID PackageCarrierID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(TRACKINGURL as nvarchar(4000)) TrackingURL
From Auct_PackageCarrier_Raw