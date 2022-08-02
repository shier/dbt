{% snapshot Auct_PhoneStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhoneStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PhoneStatus_InterView]
{% endsnapshot %}