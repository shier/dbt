create view "dbo_stg"."Auct_ContactMailing_InterView__dbt_tmp" as
    
Select
	[CONTACTMAILINGID] [ContactMailingID],
	[MAILINGTYPEID] [MailingTypeID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactMailing_Raw]
