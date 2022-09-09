create view "stg"."Auct_MailingList_Upload_FinalView__dbt_tmp" as
    
Select
	[TransactionID],[FirstName],[LastName],[Middle],[Address1],[Address2],[City],[StateProvince],[CountryID],[County],[EventID],[Careof],[PostalCode],[Created],[Active],[MailListUploadID],[ErrorMessage] 
From [Auct_MailingList_Upload_Incr] 
Where [dbt_valid_to] is null
