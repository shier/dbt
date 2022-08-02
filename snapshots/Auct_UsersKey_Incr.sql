{% snapshot Auct_UsersKey_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UsersKeyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UsersKey_InterView]
{% endsnapshot %}