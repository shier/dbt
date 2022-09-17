{{ config(materialized='table',schema='dbo')}}
Select
	cast([DateCreated] as datetime) [DATECREATED],
	cast([FirstName] as nvarchar(4000)) [FIRSTNAME],
	cast([MiddleInitial] as nvarchar(4000)) [MIDDLEINITIAL],
	cast([LastName] as nvarchar(4000)) [LASTNAME],
	cast([ContactID] as int) [CONTACTID],
	cast([NewAdditionsID] as int) [NEWADDITIONSID] 
From stg.[Auct_NewAdditions_FinalView]