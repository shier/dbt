{% snapshot Auct_Mapper_Country_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MaptoID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Mapper_Country_InterView]
{% endsnapshot %}