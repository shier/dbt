{{ config(materialized='table',schema='dbo')}}
Select
	cast([NavPull_Lot_ID] as int) [NavPull_Lot_ID],
	cast([AmountApplied] as numeric(194)) [AmountApplied],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([NavPullID] as int) [NavPullID],
	cast([AddressID] as int) [AddressID],
	cast([Created] as datetime) [Created],
	cast([PaymentMethodID] as int) [PaymentMethodID] 
From stg.[Auct_NavPull_Lot_FinalView]