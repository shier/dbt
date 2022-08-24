{% snapshot Auct_CarModel_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarModelID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarModel_InterView]
{% endsnapshot %}