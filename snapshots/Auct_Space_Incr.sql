{% snapshot Auct_Space_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SpaceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Space_InterView]
{% endsnapshot %}