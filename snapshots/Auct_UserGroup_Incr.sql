{% snapshot Auct_UserGroup_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='GroupID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserGroup_InterView]
{% endsnapshot %}