create view "stg"."Auct_MailingList_FinalView__dbt_tmp" as
    
Select
	[TransactionID],[FirstName],[LastName],[Middle],[Address1],[Address2],[City],[StateProvince],[PostalCode],[CountryID],[County],[EventID],[Careof],[MailListID],[Active] 
From [Auct_MailingList_Incr] 
Where [dbt_valid_to] is null
