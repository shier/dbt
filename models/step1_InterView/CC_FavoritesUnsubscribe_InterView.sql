{{ config(materialized='view',schema='stg')}}
Select
	[FavoritesUnsubscribePK] [FavoritesUnsubscribePK],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	[UserFK] [UserFK],
	[UnsubscribeDateUTC] [UnsubscribeDateUTC]
From stg.[CC_FavoritesUnsubscribe_Raw]
