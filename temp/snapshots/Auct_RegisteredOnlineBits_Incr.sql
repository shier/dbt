{% snapshot Auct_RegisteredOnlineBits_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='RegisteredOnlineBit',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_RegisteredOnlineBits_InterView]
{% endsnapshot %}