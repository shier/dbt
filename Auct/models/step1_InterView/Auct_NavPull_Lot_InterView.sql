{{ config(materialized='view',schema='stg')}}
Select
	[NAVPULL_LOT_ID] [NavPull_Lot_ID],
	[AMOUNTAPPLIED] [AmountApplied],
	[CONSIGNMENTID] [ConsignmentID],
	[NAVPULLID] [NavPullID],
	[ADDRESSID] [AddressID],
	[CREATED] [Created],
	[PAYMENTMETHODID] [PaymentMethodID]
From stg.[Auct_NavPull_Lot_Raw]
