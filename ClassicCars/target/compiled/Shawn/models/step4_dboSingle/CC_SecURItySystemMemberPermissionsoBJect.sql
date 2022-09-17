
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OID] as nvarchar(4000)) [OID],
	cast([Members] as nvarchar(4000)) [Members],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [Allowwrite] 
From stg.[CC_SecURItySystemMemberPermissionsoBJect_FinalView]