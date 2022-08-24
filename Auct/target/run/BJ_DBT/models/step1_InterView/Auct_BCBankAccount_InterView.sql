create view "stg"."Auct_BCBankAccount_InterView__dbt_tmp" as
    
Select
	[BCBANKACCOUNTID] [BCBankAccountID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BCBankAccount_Raw]
