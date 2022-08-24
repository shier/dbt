{% snapshot Auct_ContactOrganization_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactOrganizationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactOrganization_InterView]
{% endsnapshot %}