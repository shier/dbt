{% snapshot Auct_Privilege_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PrivilegeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Privilege_InterView]
{% endsnapshot %}