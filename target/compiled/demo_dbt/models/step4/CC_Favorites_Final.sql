
Select
	[FavoritePK],[DataTokenID],[CreateDateUTC],[ModifyDateUTC],[IsActive],[UserFK],[ListingFK] 
From stg.[CC_Favorites_Incr] 
Where [dbt_valid_to] is null