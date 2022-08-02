{% snapshot CC_SecURItySystemUser_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UserName',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_SecURItySystemUser_InterView]
{% endsnapshot %}