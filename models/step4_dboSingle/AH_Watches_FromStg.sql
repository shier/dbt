{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser] 
From stg.[AH_Watches_FinalView]