{% snapshot Auct_MediaParkingPass_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MediaParkingPassID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MediaParkingPass_InterView]
{% endsnapshot %}