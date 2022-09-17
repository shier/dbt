{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactMailingID] as int) [CONTACTMAILINGID],
	cast([MailingTypeID] as int) [MAILINGTYPEID],
	cast([ContactID] as int) [CONTACTID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ContactMailing_FinalView]