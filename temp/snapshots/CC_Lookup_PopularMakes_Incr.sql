{% snapshot CC_Lookup_PopularMakes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Make',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_Lookup_PopularMakes_InterView]
{% endsnapshot %}