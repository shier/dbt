{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaBID] as int) [TabID],
	cast([Startlsn] as varbinary(8000)) [Startlsn],
	cast([Endlsn] as varbinary(8000)) [Endlsn],
	cast([TypeID] as int) [TypeID] 
From stg.[Auct_SysTranschEMAs_FinalView]