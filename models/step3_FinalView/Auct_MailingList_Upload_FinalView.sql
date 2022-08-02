{{ config(materialized='view',schema='stg')}}
Select
	[TransactionID],[FirstName],[LastName],[Middle],[Address1],[Address2],[City],[StateProvince],[CountryID],[County],[EventID],[Careof],[PostalCode],[Created],[Active],[MailListUploadID],[ErrorMessage] 
From [Auct_MailingList_Upload_Incr]