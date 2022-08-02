{{ config(materialized='view',schema='stg')}}
Select
	[CARCREDITID] [CarCreditID],
	[BLOCKSALEID] [BlockSaleID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[AMOUNTADJUSTED] [AmountAdjusted]
From stg.[Auct_CarCredit_Raw]
