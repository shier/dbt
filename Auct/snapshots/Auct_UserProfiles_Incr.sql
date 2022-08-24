{% snapshot Auct_UserProfiles_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UserProfileID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserProfiles_InterView]
{% endsnapshot %}