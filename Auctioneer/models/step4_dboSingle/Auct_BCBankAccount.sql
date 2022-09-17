{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([BCBankAccountID] as int) [BCBANKACCOUNTID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_BCBankAccount_FinalView]