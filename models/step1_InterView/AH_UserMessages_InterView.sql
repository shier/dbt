{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[SenderId] [SEnderID],
	[RecipientId] [RecipientID],
	[MasterMessageId] [MasTerMessageID],
	[ListingId] [ListingID],
	[Sent] [Sent],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Subject] as nvarchar(4000)) [SuBJect],
	cast([Body] as nvarchar(4000)) [Body],
	cast([SenderStatus] as nvarchar(4000)) [SEnderStatus],
	cast([RecipientStatus] as nvarchar(4000)) [RecipientStatus],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_UserMessages_Raw]
