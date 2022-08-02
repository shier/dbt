{% snapshot Auct_Company_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CompanyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Company_InterView]
{% endsnapshot %}