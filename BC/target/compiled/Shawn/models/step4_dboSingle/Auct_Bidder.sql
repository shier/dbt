
Select
	cast([BidderNumber] as numeric(18,2)) [BIDDERNUMBER],
	cast([BidLimit] as money) [BIDLIMIT],
	cast([BidderID] as int) [BIDDERID],
	cast([BidderTypeID] as int) [BIDDERTYPEID],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AnniversaryDate] as datetime) [ANNIVERSARYDATE],
	cast([ApprovedBy] as int) [APPROVEDBY],
	cast([Comments] as varchar(512)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([AddressID] as int) [ADDRESSID],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([ContactPhoneID] as int) [CONTACTPHONEID] 
From stg.[Auct_Bidder_FinalView]