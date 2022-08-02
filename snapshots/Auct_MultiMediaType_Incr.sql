{% snapshot Auct_MultiMediaType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MultiMediaTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MultiMediaType_InterView]
{% endsnapshot %}