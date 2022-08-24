{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTCONTACTID] [ContactcontactID],
	[CONTACTTYPEID] [ContactTypeID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	cast([CONTACTTITLE] as nvarchar(4000)) [ContactTitle],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Contactcontact_Raw]
