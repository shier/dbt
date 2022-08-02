{{ config(materialized='view',schema='stg')}}
Select
	[BCBANKACCOUNTID] [BCBankAccountID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BCBankAccount_Raw]
