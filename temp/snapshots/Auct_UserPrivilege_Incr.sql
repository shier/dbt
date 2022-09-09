{% snapshot Auct_UserPrivilege_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UsersPrivilegeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserPrivilege_InterView]
{% endsnapshot %}