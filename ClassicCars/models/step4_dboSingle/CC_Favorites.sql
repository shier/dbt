{{ config(materialized='table',schema='dbo')}}
Select
	cast([IsActive] as bit) [IsActive],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC],
	cast([FavoritePK] as int) [FavoritePK],
	cast([ListingFK] as int) [ListingFK],
	cast([UserFK] as int) [UserFK],
	cast([DataTokenID] as uniqueidentifier) [DataTokenID] 
From stg.[CC_Favorites_FinalView]