{{ config(materialized='table',schema='dbo')}}
Select
	cast([SEnderID] as int) [SenderId],
	cast([RecipientID] as int) [RecipientId],
	cast([MasTerMessageID] as int) [MasterMessageId],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([Sent] as datetime) [Sent],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([SuBJect] as nvarchar(4000)) [Subject],
	cast([Body] as nvarchar(4000)) [Body],
	cast([SEnderStatus] as nvarchar(4000)) [SenderStatus],
	cast([RecipientStatus] as nvarchar(4000)) [RecipientStatus],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_UserMessages_FinalView]