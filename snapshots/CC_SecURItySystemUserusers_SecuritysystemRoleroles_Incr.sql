{% snapshot CC_SecURItySystemUserusers_SecuritysystemRoleroles_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Roles',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_InterView]
{% endsnapshot %}