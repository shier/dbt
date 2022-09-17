{{ config(materialized='table',schema='dbo')}}
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Reason] as nvarchar(4000)) [Reason],
	cast([Status] as nvarchar(100)) [Status],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Actiondttm] as datetime) [ActionDTTM],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ProxyAmount] as decimal(24,2)) [ProxyAmount],
	cast([Userentered] as bit) [UserEntered],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([ListingID] as int) [ListingId],
	cast([Quantity] as int) [Quantity] 
From stg.[AH_ListingActions_FinalView]