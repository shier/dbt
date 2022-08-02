{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Upperboundexclusive] as numeric(194)) [Upperboundexclusive],
	cast([Value] as numeric(194)) [Value],
	cast([Lowerboundinclusive] as numeric(194)) [Lowerboundinclusive],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([FeescheduleID] as int) [FeescheduleID],
	cast([ValueType] as nvarchar(4000)) [ValueType],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_Tiers_FinalView]