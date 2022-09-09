{% snapshot Auct_CarEngine_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarEngineID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarEngine_InterView]
{% endsnapshot %}