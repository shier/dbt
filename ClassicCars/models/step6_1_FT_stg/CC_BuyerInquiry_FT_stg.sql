{{ config(materialized='table',schema='stg')}}
SELECT
	[ID] AS [BuyerInquiryID],
	[ListingID],
	[IPAddress],
	[Browser],
	[FirstName],
	[LastName],
	[Email],
	[Phone] AS [PhoneNumber],
	[Message],
	[WantsNewsletter],
	[WantsRrcInfo],
	[UserAgent],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate],
	[IsActive],
	[EmailFilterCodeID],
	[EmailProcessed] AS [IsEmailProcessed],
	[CopyProcessed] AS [IsCopyProcessed],
	[EmailSentUTC] AS [EmailSentDateTimeUTC],
	[FollowupProcessed] AS [IsFollowupProcessed]
FROM [stg].[CC_BuyerInquiry_FinalView]