
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([TaBID] as varchar), Cast([Startlsn] as varchar), Cast([Endlsn] as varchar), Cast([TypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysTranschEMAs_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_SysTranschEMAs_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
