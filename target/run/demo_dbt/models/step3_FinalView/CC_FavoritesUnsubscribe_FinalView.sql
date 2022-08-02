create view "stg"."CC_FavoritesUnsubscribe_FinalView__dbt_tmp" as
    
Select
	[FavoritesUnsubscribePK],[DataTokenID],[UserFK],[UnsubscribeDateUTC] 
From stg.[CC_FavoritesUnsubscribe_Incr] 
Where [dbt_valid_to] is null
