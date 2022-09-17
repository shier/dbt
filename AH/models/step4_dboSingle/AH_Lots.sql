{{ config(materialized='table',schema='dbo')}}
Select
	cast([LotNumber] as nvarchar(4000)) [LotNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([IsSoftclosing] as bit) [IsSoftClosing],
	cast([SoftclosingGroup] as int) [SoftClosingGroup],
	cast([LotOrder] as int) [LotOrder],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([ID] as int) [Id],
	cast([ClosingGroup] as int) [ClosingGroup],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Lots_FinalView]