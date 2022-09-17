{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([SEndingUserID] as int) [SendingUserId],
	cast([ReceivINgUserID] as int) [ReceivingUserId],
	cast([Rating] as int) [Rating],
	cast([ListingID] as int) [ListingId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([ListingOwnerUserName] as nvarchar(4000)) [ListingOwnerUsername] 
From stg.[AH_Feedbacks_FinalView]