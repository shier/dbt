{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ListingActionID],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Reason] as nvarchar(4000)) [Reason],
	cast([Status] as nvarchar(100)) [Status],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([Actiondttm] as datetime) [ActionDTTM],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ProxyAmount] as decimal(24,2)) [ProxyAmount],
	cast([Userentered] as bit) [HasUserEntered],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([Quantity] as int) [QTY] 
From stg.[AH_ListingActions_FinalView]