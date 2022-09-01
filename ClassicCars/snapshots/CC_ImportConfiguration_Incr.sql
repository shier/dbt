{% snapshot CC_ImportConfiguration_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CompanyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ImportConfiguration_InterView]
{% endsnapshot %}