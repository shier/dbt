{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactID] as int) [ContactID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([Type] as nvarchar(4000)) [Type],
	cast([ContactTypeID] as int) [ContactTypeID] 
From stg.[Auct_Customers_FinalView]