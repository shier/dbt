{% snapshot Auct_Users_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UsersID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Users_InterView]
{% endsnapshot %}