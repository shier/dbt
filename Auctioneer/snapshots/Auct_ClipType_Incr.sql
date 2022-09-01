{% snapshot Auct_ClipType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ClipTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ClipType_InterView]
{% endsnapshot %}