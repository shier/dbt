{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UpperBoundExclusive] [Upperboundexclusive],
	[Value] [Value],
	[LowerBoundInclusive] [Lowerboundinclusive],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[FeeScheduleId] [FeescheduleID],
	cast([ValueType] as nvarchar(4000)) [ValueType],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_Tiers_Raw]
