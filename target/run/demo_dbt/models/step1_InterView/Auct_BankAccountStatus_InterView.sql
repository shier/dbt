create view "stg"."Auct_BankAccountStatus_InterView__dbt_tmp" as
    
Select
	[BANKACCOUNTSTATUSID] [BankAccountStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BankAccountStatus_Raw]
