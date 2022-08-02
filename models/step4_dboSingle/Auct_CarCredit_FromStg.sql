{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarCreditID] as int) [CarCreditID],
	cast([BlockSaleID] as int) [BlockSaleID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AmountAdjusted] as numeric(19,4)) [AmountAdjusted] 
From stg.[Auct_CarCredit_FinalView]