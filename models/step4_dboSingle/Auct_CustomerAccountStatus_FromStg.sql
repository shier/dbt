{{ config(materialized='table',schema='dbo')}}
Select
	cast([CustomerAccountStatusID] as int) [CustomerAccountStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CustomerAccountStatus_FinalView]