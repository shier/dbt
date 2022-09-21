
Select
	cast([CarCreditID] as int) [CARCREDITID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AmountAdjusted] as numeric(19,4)) [AMOUNTADJUSTED] 
From stg.[Auct_CarCredit_FinalView]