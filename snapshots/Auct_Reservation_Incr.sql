{% snapshot Auct_Reservation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReservationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Reservation_InterView]
{% endsnapshot %}