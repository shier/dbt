{{ config(materialized='view',schema='stg')}}
Select
	[TransactionID],[FirstName],[LastName],[Middle],[Address1],[Address2],[City],[StateProvince],[PostalCode],[CountryID],[County],[EventID],[Careof],[MailListID],[Active] 
From [Auct_MailingList_Incr]