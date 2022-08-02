{% snapshot Auct_AvailableEngine_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AvailableEngineID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AvailableEngine_InterView]
{% endsnapshot %}