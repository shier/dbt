{% snapshot CC_SecURItySystemoBJectPermissionsobject_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='OID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[CC_SecURItySystemoBJectPermissionsobject_InterView]
{% endsnapshot %}