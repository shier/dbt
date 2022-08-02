{{ config(materialized='view',schema='stg')}}
Select
	[tabid] [TaBID],
	cast([startlsn] as nvarchar(4000)) [Startlsn],
	cast([endlsn] as nvarchar(4000)) [Endlsn],
	[typeid] [TypeID]
From stg.[Auct_SysTranschEMAs_Raw]
