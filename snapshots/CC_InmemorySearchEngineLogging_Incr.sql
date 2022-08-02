{% snapshot CC_InmemorySearchEngineLogging_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LogPK',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_InmemorySearchEngineLogging_InterView]
{% endsnapshot %}