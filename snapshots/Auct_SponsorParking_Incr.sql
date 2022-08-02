{% snapshot Auct_SponsorParking_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SponsorParkingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SponsorParking_InterView]
{% endsnapshot %}