{% snapshot Auct_ODOMeterReading_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ODOMeterReadingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ODOMeterReading_InterView]
{% endsnapshot %}