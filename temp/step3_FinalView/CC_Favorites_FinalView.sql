{{ config(materialized='view',schema='stg')}}
Select
	[FavoritePK],[IsActive],[CreateDateUTC],[ModifyDateUTC],[ListingFK],[UserFK],[DataTokenID] 
From stg.[CC_Favorites_Incr] 
Where [dbt_valid_to] is null