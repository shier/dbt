
With hashData as (
		Select
			HASHBYTES('MD5', SrvName) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysreplServers_Inter]
	)
Select * From hashData
