{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Lastip] as nvarchar(4000)) [Lastip],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([FName] as nvarchar(4000)) [FName],
	cast([LName] as nvarchar(4000)) [LName],
	cast([IsLockedOut] as bit) [IsLockedOut],
	cast([UserID] as int) [UserID] 
From stg.[AH_BannedUsers_FinalView]