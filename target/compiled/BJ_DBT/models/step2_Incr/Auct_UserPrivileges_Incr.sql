
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([UsersID] as varchar), Cast([PrivilegeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserPrivileges_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_UserPrivileges_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
