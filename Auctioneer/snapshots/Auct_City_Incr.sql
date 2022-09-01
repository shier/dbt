{% snapshot Auct_City_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CityID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_City_InterView]
{% endsnapshot %}