
Select
	MINIMUMDEPOSITVALUE MinimumDepositValue,
	CREATED Created,
	PAYMENTMETHODID PaymentMethodID,
	UPDATEEVENTID UpdateEventID,
	PROCESSORID ProcessorID,
	WEBDISPLAYBIT WebDisplayBit,
	cast(VENDORDISPLAY as nvarchar(4000)) VendorDisplay,
	cast(CONSIGNDISPLAY as nvarchar(4000)) ConsignDisplay,
	cast(MEDIADISPLAY as nvarchar(4000)) MediaDisplay,
	cast(SPONSORDISPLAY as nvarchar(4000)) SponsorDisplay,
	cast(BIDDERDISPLAY as nvarchar(4000)) BidderDisplay,
	cast(LOTDISPLAY as nvarchar(4000)) LotDisplay,
	cast(NAME as nvarchar(4000)) Name,
	cast(BIDDISPLAY as nvarchar(4000)) BidDisplay,
	cast(WEBDISPLAYNAME as nvarchar(4000)) WebDisplayName,
	cast(WEBDESCRIPTION as nvarchar(4000)) WebDescription,
	cast(BCPAYMENTCODE as nvarchar(4000)) BCPaymentCode
From Auct_PaymentMethod_Raw