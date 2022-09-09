{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[ListingId] [ListingID],
	[ListingActionId] [ListingActionID],
	[UserId] [UserID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive],
	cast([ReferringPage] as nvarchar(4000)) [ReferringPage],
	cast([DataToken] as nvarchar(4000)) [DataToken],
	cast([UserAgent] as nvarchar(4000)) [UserAgent]
From stg.[CC_ListingTrack_Raw]
