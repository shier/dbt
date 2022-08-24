create view "dbo_stg"."Auct_CarCredit_InterView__dbt_tmp" as
    
Select
	[CARCREDITID] [CarCreditID],
	[BLOCKSALEID] [BlockSaleID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[AMOUNTADJUSTED] [AmountAdjusted]
From stg.[Auct_CarCredit_Raw]
