{% snapshot Auct_DriverKeyLocationName_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DriverKeyLocationNameID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DriverKeyLocationName_InterView]
{% endsnapshot %}