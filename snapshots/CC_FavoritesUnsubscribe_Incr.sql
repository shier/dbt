{% snapshot CC_FavoritesUnsubscribe_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FavoritesUnsubscribePK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_FavoritesUnsubscribe_InterView]
{% endsnapshot %}