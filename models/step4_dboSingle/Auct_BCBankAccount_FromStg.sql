{{ config(materialized='table',schema='dbo')}}
Select
	cast([BCBankAccountID] as int) [BCBankAccountID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_BCBankAccount_FinalView]