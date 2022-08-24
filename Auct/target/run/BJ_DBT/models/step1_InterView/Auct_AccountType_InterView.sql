create view "dbo_stg"."Auct_AccountType_InterView__dbt_tmp" as
    
Select
	[ACCOUNTTYPEID] [AccountTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AccountType_Raw]
