{% snapshot Auct_ReadingType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReadingTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ReadingType_InterView]
{% endsnapshot %}