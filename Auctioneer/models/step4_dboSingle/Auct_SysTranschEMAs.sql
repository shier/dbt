{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaBID] as int) [tabid],
	cast([Startlsn] as varbinary(8000)) [startlsn],
	cast([Endlsn] as varbinary(8000)) [endlsn],
	cast([TypeID] as int) [typeid] 
From stg.[Auct_SysTranschEMAs_FinalView]