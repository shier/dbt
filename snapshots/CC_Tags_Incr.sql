{% snapshot CC_Tags_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TagPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_Tags_InterView]
{% endsnapshot %}