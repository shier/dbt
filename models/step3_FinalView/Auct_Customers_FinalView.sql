{{ config(materialized='view',schema='stg')}}
Select
	[ContactID],[CustomerAccountID],[Name],[EmailAddress],[Type],[ContactTypeID] 
From [Auct_Customers_Incr]