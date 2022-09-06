create view "stg"."Auct_BJInsurance_FinalView__dbt_tmp" as
    
Select
	[ContactID] 
From stg.[Auct_BJInsurance_Incr] 
Where [dbt_valid_to] is null
