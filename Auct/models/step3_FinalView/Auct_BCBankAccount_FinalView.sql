{{ config(materialized='view',schema='stg')}}
Select
	[BCBankAccountID],[Active],[Name] 
From stg.[Auct_BCBankAccount_Incr] 
Where [dbt_valid_to] is null