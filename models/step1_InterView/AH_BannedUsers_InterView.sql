{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([LastIP] as nvarchar(4000)) [Lastip],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([FName] as nvarchar(4000)) [FName],
	cast([LName] as nvarchar(4000)) [LName],
	[IsLockedOut] [IsLockedOut],
	[UserId] [UserID]
From stg.[AH_BannedUsers_Raw]
