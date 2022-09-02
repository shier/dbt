{{ config(materialized='table',schema='stg')}}
SELECT
	[Id] AS [ListingTrackID],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate],
	[IsActive],
	[ListingId] AS [ListingID],
	[UserId] AS [UserID],
	[ReferringPage],
	[DataToken],
	[UserAgent]
FROM [stg].[CC_ListingTrack_FinalView]