
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast([Created] as varchar), Cast([UsersID] as varchar), Cast([PrivilegeID] as varchar), Cast([UpdateEventID] as varchar), [Deny])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserPrivilege_Inter]
	)
Select * From hashData

	where not exists 
	(
		select UsersPrivilegeID 
		from "DedicatedSQLpoolBJ"."stg"."Auct_UserPrivilege_Incr" compareData
		where hashData.UsersPrivilegeID=compareData.UsersPrivilegeID
	)
	or  exists 
	(
		Select UsersPrivilegeID, hashValue
		from "DedicatedSQLpoolBJ"."stg"."Auct_UserPrivilege_Incr" compareData
		where hashData.UsersPrivilegeID = compareData.UsersPrivilegeID and hashData.hashValue <> compareData.hashValue
	)
