{% snapshot Auct_Country_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CountryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Country_InterView]
{% endsnapshot %}