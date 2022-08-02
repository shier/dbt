create view "stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_InterView__dbt_tmp" as
    
Select
	cast([Roles] as nvarchar(4000)) [Roles],
	[OptimisticLockField] [OptimisticLockField],
	cast([Users] as nvarchar(4000)) [Users],
	cast([OID] as nvarchar(4000)) [OID]
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_Raw]
