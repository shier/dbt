{{ config(materialized='view',schema='stg')}}
Select
	[DealerID],[DealerNumber],[DealerState],[ReSaleNumber],[TaxIDNumber],[TaxIDsTage],[Created],[UpdateEventID],[DealerComment],[DealernumExpire],[DeAlerTaxExpire],[EmployeeIDNumber] 
From stg.[Auct_Dealer_Incr] 
Where [dbt_valid_to] is null