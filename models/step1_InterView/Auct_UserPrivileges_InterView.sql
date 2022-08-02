{{ config(materialized='view',schema='stg')}}
Select
	[UsersID] [UsersID],
	[PrivilegeID] [PrivilegeID]
From stg.[Auct_UserPrivileges_Raw]
