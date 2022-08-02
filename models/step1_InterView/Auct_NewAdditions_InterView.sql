{{ config(materialized='view',schema='stg')}}
Select
	[NEWADDITIONSID] [NewAdditionsID],
	[DATECREATED] [DateCreated],
	cast([FIRSTNAME] as nvarchar(4000)) [FirstName],
	cast([MIDDLEINITIAL] as nvarchar(4000)) [MiddleInitial],
	cast([LASTNAME] as nvarchar(4000)) [LastName],
	[CONTACTID] [ContactID]
From stg.[Auct_NewAdditions_Raw]
