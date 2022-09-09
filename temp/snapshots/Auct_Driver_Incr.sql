{% snapshot Auct_Driver_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='DriverID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Driver_InterView]
{% endsnapshot %}