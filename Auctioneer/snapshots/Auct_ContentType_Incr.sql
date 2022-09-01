{% snapshot Auct_ContentType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContentTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContentType_InterView]
{% endsnapshot %}