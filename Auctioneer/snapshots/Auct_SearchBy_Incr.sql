{% snapshot Auct_SearchBy_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='SearchByID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SearchBy_InterView]
{% endsnapshot %}