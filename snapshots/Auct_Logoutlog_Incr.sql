{% snapshot Auct_Logoutlog_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='LogoutlogID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Logoutlog_InterView]
{% endsnapshot %}