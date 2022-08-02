
Select
	DRIVERINFORMATIONID DriverInFormationID,
	CONSIGNMENTID ConsignmentID,
	TENTLOCATIONID TentLocationID,
	DELIVERYCARRIERID DeLiveryCarrierID,
	CHECKEDINUSERSID CheckedInUsersID,
	CHECKEDOUTUSERSID CheckedOutUsersID,
	SHIPPEDCARRIERID ShippedCarrierID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(SPAREPARTS as nvarchar(4000)) SpareParts,
	cast(VINLOCATION as nvarchar(4000)) VINLocation,
	cast(SHIPPEDCARRIEROTHER as nvarchar(4000)) ShippedCarrierOther,
	cast(CHECKEDOUTNAME as nvarchar(4000)) CheckedOutName,
	cast(BIDDERNUMBER as nvarchar(4000)) BidderNumber,
	cast(LICENSENUMBER as nvarchar(4000)) LicenseNumber,
	cast(TENTSPACENUMBER as nvarchar(4000)) TentSpaceNumber,
	cast(DELIVERYCARRIEROTHER as nvarchar(4000)) DeLiveryCarrierOther
From Auct_DriverInFormation_Raw