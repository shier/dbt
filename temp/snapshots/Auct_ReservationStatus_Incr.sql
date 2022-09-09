{% snapshot Auct_ReservationStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ReservationStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ReservationStatus_InterView]
{% endsnapshot %}