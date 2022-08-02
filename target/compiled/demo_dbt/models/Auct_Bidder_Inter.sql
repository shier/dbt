
Select
	BIDLIMIT BidLimit,
	BIDDERNUMBER BidderNumber,
	ANNIVERSARYDATE AnniversaryDate,
	CREATED Created,
	ADDRESSID AddressID,
	SHIPPINGADDRESSID ShippingAddressID,
	CONTACTPHONEID ContactPhoneID,
	BIDDERTYPEID BidderTypeID,
	BIDDERSTATUSID BidderStatusID,
	CUSTOMERACCOUNTID CustomerAccountID,
	APPROVEDBY ApprovedBy,
	UPDATEEVENTID UpdateEventID,
	PAYMENTMETHODID PaymentMethodID,
	BIDDERID BidderID,
	cast(COMMENTS as nvarchar(4000)) Comments
From Auct_Bidder_Raw