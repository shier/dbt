{% snapshot Auct_MediaType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaType_InterView]
{% endsnapshot %}