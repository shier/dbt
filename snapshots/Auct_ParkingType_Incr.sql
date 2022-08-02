{% snapshot Auct_ParkingType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ParkingTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ParkingType_InterView]
{% endsnapshot %}