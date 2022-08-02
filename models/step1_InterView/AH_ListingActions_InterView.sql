{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Reason] as nvarchar(4000)) [Reason],
	cast([Status] as nvarchar(4000)) [Status],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ActionDTTM] [Actiondttm],
	[Amount] [Amount],
	[ProxyAmount] [ProxyAmount],
	[UserEntered] [Userentered],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[Quantity] [Quantity]
From stg.[AH_ListingActions_Raw]
