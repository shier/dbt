{{ config(materialized='table',schema='dbo')}}
Select
	cast([IpAddress] as nvarchar(50)) [IpAddress],
	cast([Browser] as nvarchar(500)) [Browser],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([Email] as nvarchar(320)) [Email],
	cast([Phone] as nvarchar(100)) [Phone],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(500)) [UserAgent],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([EmailFilterCodeID] as int) [EmailFilterCodeId],
	cast([WantsNewsLetter] as bit) [WantsNewsletter],
	cast([WantsrrcInfo] as bit) [WantsRrcInfo],
	cast([IsActive] as bit) [IsActive],
	cast([EmailProcessed] as bit) [EmailProcessed],
	cast([CopyProcessed] as bit) [CopyProcessed],
	cast([FollowupProcessed] as bit) [FollowupProcessed],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([EmailSentUTC] as datetime2) [EmailSentUTC] 
From stg.[CC_BuyerInquiry_FinalView]