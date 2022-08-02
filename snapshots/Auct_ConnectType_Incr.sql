{% snapshot Auct_ConnectType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConnectTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConnectType_InterView]
{% endsnapshot %}