{% snapshot Auct_DriverKeyLocations_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DriverKeyLocationsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DriverKeyLocations_InterView]
{% endsnapshot %}