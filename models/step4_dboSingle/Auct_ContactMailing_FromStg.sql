{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactMailingID] as int) [ContactMailingID],
	cast([MailingTypeID] as int) [MailingTypeID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactMailing_FinalView]