
Select
	[DealerID],[UpdateEventID],[Created],[DealernumExpire],[DeAlerTaxExpire],[DealerNumber],[DealerState],[ReSaleNumber],[TaxIDNumber],[TaxIDsTage],[DealerComment],[EmployeeIDNumber] 
From stg.[Auct_Dealer_Incr] 
Where [dbt_valid_to] is null