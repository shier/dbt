create view "stg"."Auct_Customers_FinalView__dbt_tmp" as
    
Select
	[ContactID],[CustomerAccountID],[Name],[EmailAddress],[Type],[ContactTypeID] 
From [Auct_Customers_Incr]
