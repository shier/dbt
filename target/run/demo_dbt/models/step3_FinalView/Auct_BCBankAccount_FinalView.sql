create view "stg"."Auct_BCBankAccount_FinalView__dbt_tmp" as
    
Select
	[BCBankAccountID],[Active],[Name] 
From stg.[Auct_BCBankAccount_Incr] 
Where [dbt_valid_to] is null
