{% snapshot Auct_Config_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ConfigID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Config_InterView]
{% endsnapshot %}