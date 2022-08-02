{% snapshot Mer_Clovercache_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Mer_Clovercache_InterView]
{% endsnapshot %}