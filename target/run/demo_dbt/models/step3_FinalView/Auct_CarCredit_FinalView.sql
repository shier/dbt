create view "stg"."Auct_CarCredit_FinalView__dbt_tmp" as
    
Select
	[CarCreditID],[BlockSaleID],[Created],[UpdateEventID],[AmountAdjusted] 
From stg.[Auct_CarCredit_Incr] 
Where [dbt_valid_to] is null
