{% snapshot Auct_ContactSuffix_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactSuffixID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactSuffix_InterView]
{% endsnapshot %}