{% snapshot Auct_PhoneType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhoneTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PhoneType_InterView]
{% endsnapshot %}