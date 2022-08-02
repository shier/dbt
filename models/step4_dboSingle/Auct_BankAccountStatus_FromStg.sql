{{ config(materialized='table',schema='dbo')}}
Select
	cast([BankAccountStatusID] as int) [BankAccountStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_BankAccountStatus_FinalView]