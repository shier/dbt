{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IpAddress] as nvarchar(50)) [IPAddress],
	cast([Browser] as nvarchar(500)) [Browser],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([Email] as nvarchar(320)) [Email],
	cast([Phone] as nvarchar(100)) [PhoneNumber],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(500)) [UserAgent],
	cast([ListingID] as int) [ListingID],
	cast([EmailFilterCodeID] as int) [EmailFilterCodeID],
	cast([WantsNewsLetter] as bit) [HasNewsletter],
	cast([WantsrrcInfo] as bit) [HasRrcInfo],
	cast([IsActive] as bit) [IsActive],
	cast([EmailProcessed] as bit) [IsEmailProcessed],
	cast([CopyProcessed] as bit) [IsCopyProcessed],
	cast([FollowupProcessed] as bit) [IsFollowupProcessed],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate],
	cast([EmailSentUTC] as datetime2) [EmailSentDateTimeUTC] 
From stg.[CC_BuyerInquiry_FinalView]