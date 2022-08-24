{{ config(materialized='view',schema='stg')}}
Select
	[BANKACCOUNTSTATUSID] [BankAccountStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BankAccountStatus_Raw]
