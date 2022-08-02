
Select
	CREATED Created,
	PROPERTYID PropertyID,
	CONSIGNMENTID ConsignmentID,
	PROPERTYTYPEKEY PropertyTypeKey,
	CURRENTPROPERTYTRANSACTIONID CurrentPropertyTransactionID,
	AUCTIONID AuctionID,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(PROPERTYSPACE as nvarchar(4000)) PropertySpace,
	cast(GUIDSTAMP as nvarchar(4000)) GUIDStamp,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Property_Raw