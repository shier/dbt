{% snapshot Auct_Address_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AddressID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Address_InterView]
{% endsnapshot %}