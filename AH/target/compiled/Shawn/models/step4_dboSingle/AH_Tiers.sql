
Select
	cast([Upperboundexclusive] as numeric(26,4)) [UpperBoundExclusive],
	cast([Value] as numeric(19,4)) [Value],
	cast([Lowerboundinclusive] as numeric(19,4)) [LowerBoundInclusive],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([FeescheduleID] as int) [FeeScheduleId],
	cast([ValueType] as nvarchar(4000)) [ValueType],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_Tiers_FinalView]