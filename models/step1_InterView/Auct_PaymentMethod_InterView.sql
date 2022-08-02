{{ config(materialized='view',schema='stg')}}
Select
	[PAYMENTMETHODID] [PaymentMethodID],
	[MINIMUMDEPOSITVALUE] [MinimumDepositValue],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([BIDDISPLAY] as nvarchar(4000)) [BidDisplay],
	cast([VENDORDISPLAY] as nvarchar(4000)) [VendorDisplay],
	cast([CONSIGNDISPLAY] as nvarchar(4000)) [ConsignDisplay],
	cast([MEDIADISPLAY] as nvarchar(4000)) [MediaDisplay],
	cast([SPONSORDISPLAY] as nvarchar(4000)) [SponsorDisplay],
	cast([BIDDERDISPLAY] as nvarchar(4000)) [BidderDisplay],
	cast([LOTDISPLAY] as nvarchar(4000)) [LotDisplay],
	[PROCESSORID] [ProcessorID],
	cast([WEBDISPLAYNAME] as nvarchar(4000)) [WebDisplayName],
	cast([WEBDESCRIPTION] as nvarchar(4000)) [WebDescription],
	[WEBDISPLAYBIT] [WebDisplayBit],
	cast([BCPAYMENTCODE] as nvarchar(4000)) [BCPaymentCode]
From stg.[Auct_PaymentMethod_Raw]
