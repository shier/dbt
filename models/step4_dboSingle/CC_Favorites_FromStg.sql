{{ config(materialized='table',schema='dbo')}}
Select
	cast([FavoritePK] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([CreateDateUTC] as datetime) [CreatedUTC],
	cast([ModifyDateUTC] as datetime) [ModifiedDateUTC],
	cast([ListingFK] as int) [ListingID],
	cast([UserFK] as int) [UserID],
	cast([DataTokenID] as uniqueidentifier) [DataTokenID] 
From stg.[CC_Favorites_FinalView]