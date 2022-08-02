{% snapshot Mer_Loggingentries_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_Loggingentries_InterView]
{% endsnapshot %}