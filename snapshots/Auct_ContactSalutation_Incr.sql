{% snapshot Auct_ContactSalutation_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactSalutationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactSalutation_InterView]
{% endsnapshot %}