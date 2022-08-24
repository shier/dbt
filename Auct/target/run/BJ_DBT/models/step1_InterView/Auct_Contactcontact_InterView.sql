create view "dbo_stg"."Auct_Contactcontact_InterView__dbt_tmp" as
    
Select
	[CONTACTCONTACTID] [ContactcontactID],
	[CONTACTTYPEID] [ContactTypeID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	cast([CONTACTTITLE] as nvarchar(4000)) [ContactTitle],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Contactcontact_Raw]