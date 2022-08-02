{% snapshot Auct_UsersGroup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UsersGroupID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UsersGroup_InterView]
{% endsnapshot %}