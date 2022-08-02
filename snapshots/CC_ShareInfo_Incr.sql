{% snapshot CC_ShareInfo_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ShareInfoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_ShareInfo_InterView]
{% endsnapshot %}