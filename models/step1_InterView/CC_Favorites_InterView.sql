{{ config(materialized='view',schema='stg')}}
Select
	[FavoritePK] [FavoritePK],
	[IsActive] [IsActive],
	[CreateDateUTC] [CreateDateUTC],
	[ModifyDateUTC] [ModifyDateUTC],
	[ListingFK] [ListingFK],
	[UserFK] [UserFK],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID]
From stg.[CC_Favorites_Raw]
