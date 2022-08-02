
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	FeeScheduleId FeescheduleID,
	cast(ValueType as nvarchar(4000)) ValueType,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	LowerBoundInclusive Lowerboundinclusive,
	UpperBoundExclusive Upperboundexclusive,
	Value Value
From AH_Tiers_Raw