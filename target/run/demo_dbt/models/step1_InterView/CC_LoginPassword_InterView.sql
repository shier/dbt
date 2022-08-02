create view "stg"."CC_LoginPassword_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[IsActive] [IsActive],
	cast([Password] as nvarchar(4000)) [Password],
	[UserId] [UserID],
	[AccessFailedCount] [AccessfailedCount],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[LockoutEnd] [LockOutEnd]
From stg.[CC_LoginPassword_Raw]
