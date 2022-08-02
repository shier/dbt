{{ config(materialized='view',schema='stg')}}
Select
	[ACCOUNTTYPEID] [AccountTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AccountType_Raw]
