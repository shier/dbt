
Select
	IsMain IsMain,
	ID ID,
	OptimisticLockField OptimisticLockField,
	cast(Name as nvarchar(4000)) Name,
	cast(AssemblyFileName as nvarchar(4000)) AssemblyFileName,
	cast(Version as nvarchar(4000)) Version
From CC_ModuleInfo_Raw