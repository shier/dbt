
Select
	[ID],[UserID],[AccessfailedCount],[CreateDate],[ModifyDate],[LockOutEnd],[IsActive],[Password] 
From stg.[CC_LoginPassword_Incr] 
Where [dbt_valid_to] is null