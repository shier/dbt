{% snapshot Auct_ContactCompany_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactCompanyID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactCompany_InterView]
{% endsnapshot %}