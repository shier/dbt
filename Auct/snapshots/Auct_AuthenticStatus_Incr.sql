{% snapshot Auct_AuthenticStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AuthenticStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AuthenticStatus_InterView]
{% endsnapshot %}