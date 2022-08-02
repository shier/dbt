{% snapshot Auct_Venue_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='VenueID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Venue_InterView]
{% endsnapshot %}