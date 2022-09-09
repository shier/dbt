{% snapshot AH_KeyTable_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NextID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[AH_KeyTable_InterView]
{% endsnapshot %}