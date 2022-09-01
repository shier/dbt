{% snapshot Auct_Insurance_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='InsuranceID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Insurance_InterView]
{% endsnapshot %}