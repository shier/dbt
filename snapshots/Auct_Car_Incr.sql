{% snapshot Auct_Car_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Car_InterView]
{% endsnapshot %}