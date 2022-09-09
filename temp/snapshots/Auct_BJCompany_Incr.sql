{% snapshot Auct_BJCompany_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CompanyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_BJCompany_InterView]
{% endsnapshot %}