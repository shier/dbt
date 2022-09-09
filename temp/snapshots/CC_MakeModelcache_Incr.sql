{% snapshot CC_MakeModelcache_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_MakeModelcache_InterView]
{% endsnapshot %}