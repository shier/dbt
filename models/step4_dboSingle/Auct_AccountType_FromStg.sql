{{ config(materialized='table',schema='dbo')}}
Select
	cast([AccountTypeID] as int) [Accounttypeid],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [Updateeventid] 
From stg.[Auct_AccountType_FinalView]