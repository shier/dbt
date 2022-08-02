create view "stg"."CC_Favorites_FinalView__dbt_tmp" as
    
Select
	[FavoritePK],[IsActive],[CreateDateUTC],[ModifyDateUTC],[ListingFK],[UserFK],[DataTokenID] 
From stg.[CC_Favorites_Incr] 
Where [dbt_valid_to] is null
