{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderID] as int) [BidderID],
	cast([BidderNumber] as numeric(18,2)) [BidderNumber],
	cast([BidLimit] as money) [BidLimit],
	cast([BidderTypeID] as int) [BidderTypeID],
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AnniversaryDate] as datetime) [AnniversaryDate],
	cast([ApprovedBy] as int) [ApprovedByUserID],
	cast([Comments] as varchar(512)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([AddressID] as int) [AddressID],
	cast([ShippingAddressID] as int) [ShippingAddressID],
	cast([ContactPhoneID] as int) [ContactPhoneID] 
From stg.[Auct_Bidder_FinalView]