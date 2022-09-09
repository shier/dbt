{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Question] as nvarchar(4000)) [Question],
	cast([Answer] as nvarchar(4000)) [Answer]
From stg.[AH_ListingQuestions_Raw]
