{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([SEnderID] as int) [SEnderID],
	cast([RecipientID] as int) [RecipientID],
	cast([MasTerMessageID] as int) [MasTerMessageID],
	cast([ListingID] as int) [ListingID],
	cast([Sent] as datetime) [Sent],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([SuBJect] as nvarchar(4000)) [SuBJect],
	cast([Body] as nvarchar(4000)) [Body],
	cast([SEnderStatus] as nvarchar(4000)) [SEnderStatus],
	cast([RecipientStatus] as nvarchar(4000)) [RecipientStatus],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_UserMessages_FinalView]