{{ config(materialized='table',schema='dbo')}}
Select
	cast([CountryID] as int) [COUNTRYID],
	cast([Name] as varchar(128)) [NAME],
	cast([CountryCode] as int) [COUNTRYCODE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DisplayOrder] as int) [DISPLAYORDER],
	cast([SynchID] as varchar(50)) [SYNCHID] 
From stg.[Auct_Country_FinalView]