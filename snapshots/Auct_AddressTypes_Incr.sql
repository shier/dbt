{% snapshot Auct_AddressTypes_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AddressTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AddressTypes_InterView]
{% endsnapshot %}