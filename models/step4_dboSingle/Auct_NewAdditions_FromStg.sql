{{ config(materialized='table',schema='dbo')}}
Select
	cast([NewAdditionsID] as int) [NewAdditionsID],
	cast([DateCreated] as datetime) [DateCreated],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([MiddleInitial] as nvarchar(4000)) [MiddleInitial],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([ContactID] as int) [ContactID] 
From stg.[Auct_NewAdditions_FinalView]