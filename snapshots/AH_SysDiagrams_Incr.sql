{% snapshot AH_SysDiagrams_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Diagram_ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_SysDiagrams_InterView]
{% endsnapshot %}