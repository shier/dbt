{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactID] as int) [CONTACTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([EmailAddress] as nvarchar(4000)) [EMAILADDRESS],
	cast([Type] as nvarchar(4000)) [Type],
	cast([ContactTypeID] as int) [CONTACTTYPEID] 
From stg.[Auct_Customers_FinalView]