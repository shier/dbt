{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Browser] as nvarchar(4000)) [Browser],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([Email] as nvarchar(4000)) [Email],
	cast([Phone] as nvarchar(4000)) [Phone],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	[ListingId] [ListingID],
	[EmailFilterCodeId] [EmailFilterCodeID],
	[WantsNewsletter] [WantsNewsLetter],
	[WantsRrcInfo] [WantsrrcInfo],
	[IsActive] [IsActive],
	[EmailProcessed] [EmailProcessed],
	[CopyProcessed] [CopyProcessed],
	[FollowupProcessed] [FollowupProcessed],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[EmailSentUTC] [EmailSentUTC]
From stg.[CC_BuyerInquiry_Raw]
