{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTMAILINGID] [ContactMailingID],
	[MAILINGTYPEID] [MailingTypeID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactMailing_Raw]
