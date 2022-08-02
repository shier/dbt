{% snapshot CC_ListingSources_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ListingSourcePK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ListingSources_InterView]
{% endsnapshot %}