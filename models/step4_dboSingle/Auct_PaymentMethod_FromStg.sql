{{ config(materialized='table',schema='dbo')}}
Select
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([MinimumDepositValue] as numeric(18,0)) [MinimumDepositValue],
	cast([Name] as nvarchar(512)) [PaymentMethod],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BidDisplay] as nvarchar(512)) [BidDisplay],
	cast([VendorDisplay] as nvarchar(512)) [VendorDisplay],
	cast([ConsignDisplay] as nvarchar(512)) [ConsignDisplay],
	cast([MediaDisplay] as nvarchar(512)) [MediaDisplay],
	cast([SponsorDisplay] as nvarchar(512)) [SponsorDisplay],
	cast([BidderDisplay] as nvarchar(512)) [BidderDisplay],
	cast([LotDisplay] as nvarchar(512)) [LotDisplay],
	cast([ProcessorID] as int) [ProcessorID],
	cast([WebDisplayName] as nvarchar(512)) [WebDisplayName],
	cast([WebDescription] as nvarchar(512)) [WebDescription],
	cast([WebDisplayBit] as int) [WebDisplayBit],
	cast([BCPaymentCode] as nvarchar(512)) [BcPaymentCode] 
From stg.[Auct_PaymentMethod_FinalView]