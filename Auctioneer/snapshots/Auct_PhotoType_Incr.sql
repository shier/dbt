{% snapshot Auct_PhotoType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhotoTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PhotoType_InterView]
{% endsnapshot %}