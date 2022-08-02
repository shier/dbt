{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Question] as nvarchar(4000)) [Question],
	cast([Answer] as nvarchar(4000)) [Answer] 
From stg.[AH_ListingQuestions_FinalView]