{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([SEndingUserID] as int) [SEndingUserID],
	cast([ReceivINgUserID] as int) [ReceivINgUserID],
	cast([Rating] as int) [Rating],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([ListingOwnerUserName] as nvarchar(4000)) [ListingOwnerUserName] 
From stg.[AH_Feedbacks_FinalView]