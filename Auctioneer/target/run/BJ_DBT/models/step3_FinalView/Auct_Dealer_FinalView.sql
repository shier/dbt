create view "stg"."Auct_Dealer_FinalView__dbt_tmp" as
    
Select
	[DealerID],[DealerNumber],[DealerState],[ReSaleNumber],[TaxIDNumber],[TaxIDsTage],[Created],[UpdateEventID],[DealerComment],[DealernumExpire],[DeAlerTaxExpire],[EmployeeIDNumber] 
From stg.[Auct_Dealer_Incr] 
Where [dbt_valid_to] is null
