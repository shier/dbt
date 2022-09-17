{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactcontactID] as int) [CONTACTCONTACTID],
	cast([ContactTypeID] as int) [CONTACTTYPEID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ContactTitle] as varchar(64)) [CONTACTTITLE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Contactcontact_FinalView]