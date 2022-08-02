{% snapshot CC_SysDiagrams_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Name',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_SysDiagrams_InterView]
{% endsnapshot %}