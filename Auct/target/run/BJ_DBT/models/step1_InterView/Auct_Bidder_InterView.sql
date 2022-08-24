create view "dbo_stg"."Auct_Bidder_InterView__dbt_tmp" as
    
Select
	[BIDDERID] [BidderID],
	[BIDDERNUMBER] [BidderNumber],
	[BIDLIMIT] [BidLimit],
	[BIDDERTYPEID] [BidderTypeID],
	[BIDDERSTATUSID] [BidderStatusID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ANNIVERSARYDATE] [AnniversaryDate],
	[APPROVEDBY] [ApprovedBy],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PAYMENTMETHODID] [PaymentMethodID],
	[ADDRESSID] [AddressID],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[CONTACTPHONEID] [ContactPhoneID]
From stg.[Auct_Bidder_Raw]
