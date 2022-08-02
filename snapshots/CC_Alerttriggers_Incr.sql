{% snapshot CC_Alerttriggers_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_Alerttriggers_InterView]
{% endsnapshot %}