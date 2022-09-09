{% snapshot Auct_PropertyType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PropertyTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PropertyType_InterView]
{% endsnapshot %}