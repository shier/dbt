{% snapshot Auct_Year_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='YearID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Year_InterView]
{% endsnapshot %}