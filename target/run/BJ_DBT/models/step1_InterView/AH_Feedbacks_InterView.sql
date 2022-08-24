create view "stg"."AH_Feedbacks_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[SendingUserId] [SEndingUserID],
	[ReceivingUserId] [ReceivINgUserID],
	[Rating] [Rating],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateStamp] [DaTestamp],
	cast([Comment] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([ListingOwnerUsername] as nvarchar(4000)) [ListingOwnerUserName]
From stg.[AH_Feedbacks_Raw]
