{% snapshot CC_SalesForceData_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_SalesForceData_InterView]
{% endsnapshot %}