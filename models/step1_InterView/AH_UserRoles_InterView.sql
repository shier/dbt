{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[RoleId] [RoleID],
	[UserId] [UserID]
From stg.[AH_UserRoles_Raw]
