{{ config(materialized='table',schema='dbo')}}
Select
	cast([AmountApplied] as numeric(19,4)) [AMOUNTAPPLIED],
	cast([NavPull_Lot_ID] as int) [NAVPULL_LOT_ID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([NavPullID] as int) [NAVPULLID],
	cast([AddressID] as int) [ADDRESSID],
	cast([Created] as datetime) [CREATED],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID] 
From stg.[Auct_NavPull_Lot_FinalView]