{% snapshot Auct_DriverInFormation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DriverInFormationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DriverInFormation_InterView]
{% endsnapshot %}