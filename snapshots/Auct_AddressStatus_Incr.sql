{% snapshot Auct_AddressStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AddressStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AddressStatus_InterView]
{% endsnapshot %}