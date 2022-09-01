{% snapshot Auct_ContactMailing_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactMailingID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactMailing_InterView]
{% endsnapshot %}