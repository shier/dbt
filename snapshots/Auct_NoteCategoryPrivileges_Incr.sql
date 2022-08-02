{% snapshot Auct_NoteCategoryPrivileges_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NoteCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_NoteCategoryPrivileges_InterView]
{% endsnapshot %}