{% snapshot CC_Favorites_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FavoritePK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_Favorites_InterView]
{% endsnapshot %}