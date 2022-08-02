create view "stg"."AH_UserRoles_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[RoleId] [RoleID],
	[UserId] [UserID]
From stg.[AH_UserRoles_Raw]
