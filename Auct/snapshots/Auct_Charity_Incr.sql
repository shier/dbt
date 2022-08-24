{% snapshot Auct_Charity_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CharityID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Charity_InterView]
{% endsnapshot %}