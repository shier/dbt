{{ config(materialized='view',schema='stg')}}
Select
	[FavoritesUnsubscribePK],[DataTokenID],[UserFK],[UnsubscribeDateUTC] 
From stg.[CC_FavoritesUnsubscribe_Incr] 
Where [dbt_valid_to] is null