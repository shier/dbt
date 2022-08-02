{% snapshot Auct_DrivertentLocation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DrivertentLocationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_DrivertentLocation_InterView]
{% endsnapshot %}