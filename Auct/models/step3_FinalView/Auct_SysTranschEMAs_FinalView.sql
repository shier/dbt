{{ config(materialized='view',schema='stg')}}
Select
	[TaBID],[Startlsn],[Endlsn],[TypeID] 
From [Auct_SysTranschEMAs_Incr]