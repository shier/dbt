
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UserID as varchar), Cast(AccessfailedCount as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(LockOutEnd as varchar), Cast(IsActive as varchar), Password)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_LoginPassword_Inter]
	)
Select * From hashData
